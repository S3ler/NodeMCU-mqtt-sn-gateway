//
// Created by bele on 04.01.17.
//

#ifndef ESPARDUINOGATEWAY_PUBSUBMQTTMESSAGEHANDLER_H
#define ESPARDUINOGATEWAY_PUBSUBMQTTMESSAGEHANDLER_H



#include <Client.h>
#include <MqttMessageHandlerInterface.h>
#include "PubSubClient.h"

class PubSubMqttMessageHandler : public MqttMessageHandlerInterface {
public:
    virtual bool begin();

    void setClient(PubSubClient *client);

    virtual void setCore(Core *core);

    virtual void setServer(uint8_t *ip, uint16_t port);

    virtual void setServer(const char *hostname, uint16_t port);

    virtual void setLogger(LoggerInterface *logger);

    virtual bool connect(const char *id);

    virtual bool connect(const char *id, const char *user, const char *pass);

    virtual bool
    connect(const char *id, const char *willTopic, uint8_t willQos, bool willRetain, const uint8_t *willMessage,
            const uint16_t willMessageLength);

    virtual bool
    connect(const char *id, const char *user, const char *pass, const char *willTopic, uint8_t willQos, bool willRetain,
            const uint8_t *willMessage, const uint16_t willMessageLength);

    virtual void disconnect();

    virtual bool publish(const char *topic, const uint8_t *payload, uint16_t plength, uint8_t qos, bool retained);

    virtual bool subscribe(const char *topic, uint8_t qos);

    virtual bool unsubscribe(const char *topic);

    virtual bool receive_publish(char *topic, uint8_t *payload, uint32_t length);

    virtual bool loop();

    Core *core = nullptr;
    LoggerInterface *logger;
    PubSubClient* pubSubClient;

    bool getConfigAndConnect();

};


#endif //ESPARDUINOGATEWAY_PUBSUBMQTTMESSAGEHANDLER_H
