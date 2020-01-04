#include <Arduino.h>
#include <FS.h>
#include <SPIFFS.h>


#include "config.h"
#include "logger.h"
#include "webserver.h"
#include "alarm.h"

// Implementation variable ////////////////////////////////////////////////////

AlarmClass ALARM;

#include "callback.h"

/// ARDUINO BLOCK /////////////////////////////////////////////////////////////

#define SERIAL_BAUD_RATE 115200             // Serial port debug max speed
#define CONFIG_FILE "/config.json"          // where the config file is stored in the SPIFFS partition
#define CALLBACK_PREFIX "/alarm"            // prefix for webservices callback

void setup() {

    randomSeed(analogRead(0));

    // Serial monitor output 
    LOGGER.EnableSerialDebug(SERIAL_BAUD_RATE);

    // RFID init
    SPI.begin();  
    mfrc522.PCD_Init();

    // configure CatFeeder Objects
    SPIFFS.begin();
    CONFIG.begin(&SPIFFS,CONFIG_FILE);
    LOGGER.begin(&SPIFFS,CONFIG.log_file); 
    ALARM.begin(&SPIFFS, CONFIG.scheduled_interval);

    HELPER.Configure_NetWork();

    // configure the WebServer
    WebServer.set_usercallbackfilter(CALLBACK_PREFIX);
    WebServer.setUSERCallback(callbackHandler);
    WebServer.begin(CONFIG.http_port);
    //
    // serve the log file as static one
    //
    WebServer.WebServer->serveStatic(CONFIG.log_file.c_str(), SPIFFS, CONFIG.log_file.c_str());

    // configure the logger to be served statically
    // maybe all the static elements in the directory
    // should be handled in this way.
    // ESPHTTPServer.serveStatic("/catfeeder.log", SPIFFS, "/catfeeder.log");

    ALARM.IsRunning();
   
    /* add setup code here */
}

/// MAIN LOOP /////////////////////////////////////////////////////////////////



void loop() {

   
    // DO NOT REMOVE. Attend OTA update from Arduino IDE
    WebServer.handle();	
}
