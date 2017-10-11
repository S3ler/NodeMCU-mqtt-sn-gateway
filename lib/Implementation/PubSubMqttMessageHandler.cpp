#include "PubSubMqttMessageHandler.h"

#define PUBSUB_DEBUG 1

bool PubSubMqttMessageHandler::begin() {
#if PUBSUB_DEBUG
    if (logger == nullptr) {
        return false;
    }
#endif
    if (core == nullptr) {
#if PUBSUB_DEBUG
        logger->log("Error starting PubSubMqttMessageHandler: core is null",0);
#endif
        return false;
    }
    if (pubSubClient == nullptr) {
#if PUBSUB_DEBUG
        logger->log("Error starting PubSubMqttMessageHandler: pubSubClient is null",0);
#endif
        return false;
    }
#if PUBSUB_DEBUG
    logger->log("PubSubMqttMessageHandler started", 1);
#endif

    return true;
}

void PubSubMqttMessageHandler::setClient(PubSubClient *pubSubClient) {
    this->pubSubClient = pubSubClient;
}

void PubSubMqttMessageHandler::setCore(Core *core) {
    this->core = core;
}

void PubSubMqttMessageHandler::setLogger(LoggerInterface *logger) {
    this->logger = logger;
}

void PubSubMqttMessageHandler::setServer(uint8_t *ip, uint16_t port) {
    pubSubClient->setServer(ip, port);
}

void PubSubMqttMessageHandler::setServer(const char *hostname, uint16_t port) {
    pubSubClient->setServer(hostname, port);
}


bool PubSubMqttMessageHandler::connect(const char *id) {
    return pubSubClient->connect(id);
}

bool PubSubMqttMessageHandler::connect(const char *id, const char *user, const char *pass) {
    return pubSubClient->connect(id, user, pass);
}

bool PubSubMqttMessageHandler::connect(const char *id, const char *willTopic, uint8_t willQos, bool willRetain,
                                       const uint8_t *willMessage, const uint16_t willMessageLength) {
    if (willMessageLength > 255) {
        return false;
    }
    char buf[255];
    memset(&buf, 0, sizeof(255));
    memcpy(&buf, willMessage, willMessageLength);
    return pubSubClient->connect(id, willTopic, willQos, (boolean) willRetain, buf);
}

bool PubSubMqttMessageHandler::connect(const char *id, const char *user, const char *pass, const char *willTopic,
                                       uint8_t willQos, bool willRetain, const uint8_t *willMessage,
                                       const uint16_t willMessageLength) {
    if (willMessageLength > 255) {
        return false;
    }
    char buf[255];
    memset(&buf, 0, sizeof(255));
    memcpy(&buf, willMessage, willMessageLength);
    return pubSubClient->connect(id, user, pass, willTopic, willQos,(boolean) willRetain, buf);
}

void PubSubMqttMessageHandler::disconnect() {
    pubSubClient->disconnect();
    core->notify_mqtt_disconnected();
}

bool PubSubMqttMessageHandler::publish(const char *topic, const uint8_t *payload, uint16_t plength, uint8_t qos,
                                       bool retained) {
    return pubSubClient->publish(topic, payload, plength, (boolean) retained);
}

bool PubSubMqttMessageHandler::subscribe(const char *topic, uint8_t qos) {
    return pubSubClient->subscribe(topic, qos);
}

bool PubSubMqttMessageHandler::unsubscribe(const char *topic) {
    return pubSubClient->unsubscribe(topic);
}

bool PubSubMqttMessageHandler::receive_publish(char *topic, uint8_t *payload, uint32_t length) {
    // TODO the retain flag is always false
    CORE_RESULT publish_result = core->publish(topic, payload, length, false);
    return publish_result == SUCCESS;
}

bool PubSubMqttMessageHandler::loop() {
    if (pubSubClient->state() == MQTT_CONNECTED) {
        pubSubClient->loop();
    } else {
        core->notify_mqtt_disconnected();
        if (getConfigAndConnect()) {
            core->notify_mqtt_connected();
#if PUBSUB_DEBUG
            logger->log("PubSubMqttMessageHandler successfully connected", 1);
#endif
            return true;
        }
#if PUBSUB_DEBUG
        logger->log("PubSubMqttMessageHandler connection failed", 0);
#endif
        return false;
    }
    return true;

}

bool PubSubMqttMessageHandler::getConfigAndConnect() {
#if PUBSUB_DEBUG
    logger->log("Connecting PubSubMqttMessageHandler", 1);
#endif
    uint8_t server_ip[4];
    memset(&server_ip, 0, sizeof(server_ip));
    uint16_t server_port = 0;
    char client_id[24];
    memset(&client_id, 0, sizeof(client_id));
    if (core->get_mqtt_config((uint8_t *) &server_ip, &server_port, (char *) &client_id) == SUCCESS) {

        // login
        char username[24];
        memset(&username, 0, sizeof(username));
        char password[24];
        memset(&password, 0, sizeof(password));

        // will
        char will_topic[255];
        memset(&will_topic, 0, sizeof(will_topic));
        char will_msg[255];
        memset(&will_msg, 0, sizeof(will_msg));
        uint8_t will_qos = 0;
        bool will_retain = false;


        bool has_mqtt_login_config, has_mqtt_will;
        has_mqtt_login_config = core->get_mqtt_login_config((char *) &username, (char *) password);
        has_mqtt_will = core->get_mqtt_will(will_topic, will_msg, &will_qos, &will_retain);

        yield();
#if PUBSUB_DEBUG
        logger->start_log("Connecting to Broker ", 2);

        char octed[6];
        sprintf(octed, "%d", server_ip[0]);
        logger->append_log(octed);
        logger->append_log(".");
        sprintf(octed, "%d", server_ip[1]);
        logger->append_log(octed);
        logger->append_log(".");
        sprintf(octed, "%d", server_ip[2]);
        logger->append_log(octed);
        logger->append_log(".");
        sprintf(octed, "%d", server_ip[3]);
        logger->append_log(octed);

        logger->append_log(":");

        sprintf(octed, "%d", server_port);
        logger->append_log(octed);

        logger->append_log(" client id ");
        logger->append_log(client_id);
#endif
        setServer(server_ip, server_port);
        if (has_mqtt_login_config && has_mqtt_will) {
#if PUBSUB_DEBUG
            logger->start_log(" username ",2);
            logger->append_log(username);
            logger->start_log(" password ", 10);
            logger->append_log(password);
            logger->start_log("willtopic ",2);
            logger->append_log(will_topic);
            logger->append_log(" willmessage ");
            logger->append_log(will_msg);
            logger->append_log(" qos ");
            sprintf(octed, "%d", will_qos);
            logger->append_log(octed);
            logger->append_log(" retain ");
            logger->append_log(will_retain ? "true" : "false");
#endif
            return connect(client_id, username, password, will_topic, will_qos, will_retain, (const uint8_t *) will_msg,
                           (const uint16_t) (strlen(will_msg) + 1));
        } else if (has_mqtt_login_config) {
#if PUBSUB_DEBUG
            logger->start_log(" username ",2);
            logger->append_log(username);
            logger->start_log(" password ", 10);
            logger->append_log(password);
#endif
            return connect(client_id, username, password);
        } else if (has_mqtt_will) {
#if PUBSUB_DEBUG
            logger->start_log("willtopic ",2);
            logger->append_log(will_topic);
            logger->append_log(" willmessage ");
            logger->append_log(will_msg);
            logger->append_log(" qos ");
            sprintf(octed, "%d", will_qos);
            logger->append_log(octed);
            logger->append_log(" retain ");
            logger->append_log(will_retain ? "true" : "false");
#endif
            return connect(client_id, will_topic, will_qos, will_retain, (const uint8_t *) will_msg,
                           (const uint16_t) (strlen(will_msg) + 1));
        } else{
            return connect(client_id);
        }

    }
#if PUBSUB_DEBUG
    logger->log("Error loading basic Mqtt configurations", 0);
#endif
    return false;
}
