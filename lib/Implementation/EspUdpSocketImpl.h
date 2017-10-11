//
// Created by bele on 12.12.16.
//

#ifndef GATEWAY_SOCKET_H
#define GATEWAY_SOCKET_H

#include <cstring>
#include <SocketInterface.h>
#include <ESP8266WiFi.h>
#include <WiFiUdp.h>

#define SOCKET_DEBUG 1

class EspUdpSocketImpl : public SocketInterface {
private:
    LoggerInterface *logger;
    MqttSnMessageHandler *mqttSnMessageHandler;

    device_address address;
    device_address broadcast_address;

    uint16_t localPort = 8888;
    WiFiUDP Udp;

    char packetBuffer[512]; //buffer to hold incoming packet
public:

    virtual bool begin() {
        memset(&address, 0x0, sizeof(device_address));
        if (mqttSnMessageHandler == NULL) {
#if SOCKET_DEBUG
            logger->log("Error starting EspUdpSocketImpl: mqttSnMessageHandler is null", 0);
#endif
            return false;
        }

        Udp.begin(localPort);

        IPAddress ipaddress = WiFi.localIP();
        uint32_t ipAddress_as_uint = (uint32_t) ipaddress;
        memcpy(&address, &ipAddress_as_uint, sizeof(uint32_t));
        memcpy(&address.bytes[sizeof(uint32_t)], &localPort, sizeof(uint16_t));

        memset(&broadcast_address, 0xff, sizeof(uint32_t));
        memcpy(&broadcast_address.bytes[sizeof(uint32_t)], &localPort, sizeof(uint16_t));

        bool result = (WiFi.status() != WL_CONNECTED) || (WiFi.status() != WL_IDLE_STATUS);
#if SOCKET_DEBUG
        if (!result) {
            logger->log("Error starting EspUdpSocketImpl: ", 0);
        }
        logger->log("EspUdpSocketImpl started", 1);
#endif
        mqttSnMessageHandler->notify_socket_connected();
        return result;
    }

    virtual void setMqttSnMessageHandler(MqttSnMessageHandler *mqttSnMessageHandler) {
        this->mqttSnMessageHandler = mqttSnMessageHandler;
    }

    virtual void setLogger(LoggerInterface *logger) {
        this->logger = logger;
    }

    virtual device_address *getBroadcastAddress() {
        return &this->address;
    }

    virtual device_address *getAddress() {
        return &this->broadcast_address;
    }

    virtual uint8_t getMaximumMessageLength() {
        return 255;
    }

    virtual bool send(device_address *destination, uint8_t *bytes, uint16_t bytes_len) {
        IPAddress destination_ipAddress(destination->bytes[0], destination->bytes[1], destination->bytes[2],
                                        destination->bytes[3]);
        uint16_t destination_port = 0;
        memcpy(&destination_port, &destination->bytes[sizeof(uint32_t)], sizeof(uint16_t));

#if SOCKET_DEBUG
        logger->start_log("Send ", 2);

        char octed[6];
        sprintf(octed, "%d", destination->bytes[0]);
        logger->append_log(octed);
        logger->append_log(".");
        sprintf(octed, "%d", destination->bytes[1]);
        logger->append_log(octed);
        logger->append_log(".");
        sprintf(octed, "%d", destination->bytes[2]);
        logger->append_log(octed);
        logger->append_log(".");
        sprintf(octed, "%d", destination->bytes[3]);
        logger->append_log(octed);

        logger->append_log(":");

        sprintf(octed, "%d", destination_port);
        logger->append_log(octed);
#endif

        Udp.beginPacket(destination_ipAddress, destination_port);
        Udp.write(bytes, bytes_len);
        return Udp.endPacket() == 1;;
    }

    virtual bool send(device_address *destination, uint8_t *bytes, uint16_t bytes_len, uint8_t signal_strength) {
        return send(destination, bytes, bytes_len);
    }

    virtual bool loop() {

        // if there's data available, read a packet
        int packetSize = Udp.parsePacket();
        if (packetSize) {

            IPAddress remoteIp = Udp.remoteIP();
            uint16_t remotePort = Udp.remotePort();

            // read the packet into packetBufffer
            memset(&packetBuffer, 0, 512);
            int len = Udp.read(packetBuffer, 512);

#if SOCKET_DEBUG
            logger->start_log("Received packet of size ", 4);
            char octed[20];
            sprintf(octed, "%d", len);
            logger->append_log(octed);
#endif
            if (len > 0) {
                packetBuffer[len] = 0;
            }
            device_address deviceAddress;
            memset(&deviceAddress, 0, sizeof(device_address));

            //IPAddress ipAddress = Udp.remoteIP();
            uint32_t ipAddress_as_uint = (uint32_t) remoteIp;

            memcpy(&deviceAddress, &ipAddress_as_uint, sizeof(uint32_t));
            memcpy(&deviceAddress.bytes[sizeof(uint32_t)], &remotePort, sizeof(uint16_t));


#if SOCKET_DEBUG
            logger->start_log("From ", 3);

            sprintf(octed, "%d", deviceAddress.bytes[0]);
            logger->append_log(octed);
            logger->append_log(".");
            sprintf(octed, "%d", deviceAddress.bytes[1]);
            logger->append_log(octed);
            logger->append_log(".");
            sprintf(octed, "%d", deviceAddress.bytes[2]);
            logger->append_log(octed);
            logger->append_log(".");
            sprintf(octed, "%d", deviceAddress.bytes[3]);
            logger->append_log(octed);
            logger->append_log(":");
            sprintf(octed, "%d", remotePort);
            logger->append_log(octed);
#endif

            if (len < 255) {
                mqttSnMessageHandler->receiveData(&deviceAddress, (uint8_t *) &packetBuffer);
            }
        }
        return (WiFi.status() != WL_CONNECTED) || (WiFi.status() != WL_IDLE_STATUS);
    }

};


#endif //GATEWAY_SOCKET_H
