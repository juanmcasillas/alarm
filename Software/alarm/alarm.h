///////////////////////////////////////////////////////////////////////////////
/// Alarm Implementation //////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////

#ifndef __ALARM_H__
#define __ALARM_H__

#include <Arduino.h>
#include <FS.h>
#include <SPIFFS.h>
#include <Ticker.h>
#include <ArduinoJson.h>


#include "config.h"
#include "logger.h"
#include "helper.h"
#include "webserver.h"

class AlarmClass {
    public:

    protected:
        FS *_fs;            // ICPFS implementation
        Ticker _ticker;     // Periodic Time Dispatcher (see CheckScheduler)
        float _scheduled_interval;

    public:
        bool begin(fs::FS *fs, float scheduled_interval);
        void IsRunning(); // shows the start information

        static void CheckScheduler(void *arg); // Programmed each 1 second. Passed myself as arg.
        
        // exposed WWW methods (REST)
        String SayHello(AsyncWebServerRequest *request);

        // internal methods used to do things
    protected:


};

#endif
