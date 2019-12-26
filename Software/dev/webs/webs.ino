#include <Arduino.h>
#include <FS.h>
#include <SPIFFS.h>


#include "config.h"
#include "logger.h"
#include "webserver.h"
#include "example.h"

// Implementation variable ////////////////////////////////////////////////////

ExampleClass EXAMPLE;

#include "callback.h"

/// ARDUINO BLOCK /////////////////////////////////////////////////////////////

#define SERIAL_BAUD_RATE 115200
#define CONFIG_FILE "/config.json"
#define CALLBACK_PREFIX "/example"

void setup() {
   
    randomSeed(analogRead(0));

    // Serial monitor output 
    LOGGER.EnableSerialDebug(SERIAL_BAUD_RATE);

    // configure CatFeeder Objects
    SPIFFS.begin();
    CONFIG.begin(&SPIFFS,CONFIG_FILE);
    LOGGER.begin(&SPIFFS,CONFIG.log_file); 
    EXAMPLE.begin(&SPIFFS, CONFIG.scheduled_interval);

    HELPER.Configure_NetWork();

    // configure the WebServer
    WebServer.set_usercallbackfilter(CALLBACK_PREFIX);
    WebServer.setUSERCallback(callbackHandler);
    WebServer.begin(CONFIG.http_port);
   
    // configure the logger to be served statically
    // maybe all the static elements in the directory
    // should be handled in this way.
    // ESPHTTPServer.serveStatic("/catfeeder.log", SPIFFS, "/catfeeder.log");

    EXAMPLE.IsRunning();
    /* add setup code here */
}

/// MAIN LOOP /////////////////////////////////////////////////////////////////

void loop() {
    /* add main program code here */
    // DO NOT REMOVE. Attend OTA update from Arduino IDE
    WebServer.handle();	
}
