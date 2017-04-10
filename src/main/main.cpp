#include <EspUdpSocketImpl.h>
#include <LinuxLogger.h>
#include <LinuxSystem.h>
#include <LinuxPersistent.h>
#include <Gateway.h>
#include <PubSubMqttMessageHandler.h>
#include <ESP8266WiFi.h>
#include <SD.h>

const char *ssid = "...";
const char *pwd = "...";

WiFiClient client;
PubSubClient pubSubClient(client);
PubSubMqttMessageHandler mqtt;

Gateway gateway;
EspUdpSocketImpl udpSocket;
LinuxPersistent persistent;


LinuxLogger logger;
LinuxSystem systemImpl;

void setup() {
    Serial.begin(115200);

    logger.start_log("ESP MQTT-SN Gateway version 0.0.1a starting", 1);

    WiFi.begin(ssid, pwd);
    logger.start_log("Connect Wifi", 1);
    while (WiFi.status() != WL_CONNECTED) {
        systemImpl.sleep(500);
        logger.append_log(".");
    }
    logger.append_log("Wifi connected!");

    if (!SD.begin(4)) {
        logger.log("SD Card initialization failed!", 0);
        systemImpl.sleep(5000);
        systemImpl.exit();
    }

    mqtt.setClient(&pubSubClient);

    gateway.setLoggerInterface(&logger);
    gateway.setSocketInterface(&udpSocket);
    gateway.setMqttInterface(&mqtt);
    gateway.setPersistentInterface(&persistent);
    gateway.setSystemInterface(&systemImpl);

    while (!gateway.begin()) {
        logger.log("Error starting gateway components", 0);
        systemImpl.sleep(5000);
        systemImpl.exit();
    }
    logger.log("Gateway ready", 1);
}

void loop() {
    gateway.loop();
}



