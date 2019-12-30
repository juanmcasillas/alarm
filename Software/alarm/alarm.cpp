///////////////////////////////////////////////////////////////////////////////
/// Alarm Implementation //////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////

#include "alarm.h"



// arduino init
bool AlarmClass::begin(fs::FS *fs, float scheduled_interval) {
   
    _fs = fs;
    _scheduled_interval = scheduled_interval;

    LOGGER.INFO("Alarm starting");

    // configure the scheduler checker. Do the things scheduled_interval
 
    _ticker.attach(this->_scheduled_interval, &AlarmClass::CheckScheduler, static_cast<void*>(this)); 
    return(true);
}

// show some log info about configuration, starts, and so on (e.g. position, dates, schedules)
void AlarmClass::IsRunning() {
    LOGGER.INFO("Alarm is Running and Handling Requests!");
}





void AlarmClass::CheckScheduler(void *arg) {
    AlarmClass *self = reinterpret_cast<AlarmClass *>(arg);

    //
    // running each SCHEDULE_PERIOD
    // check zones, ring the alarm, this things
    //

    //DEBUGLOG("TICK: %s\n", self->GetTimeStampNow().c_str());
    
   
}


// get the status of the CatFeeder (index.html)
String AlarmClass::SayHello(AsyncWebServerRequest *request) {
    StaticJsonDocument<500> root;

    root["stamp"] = HELPER.GetTimeStampNow();
    root["Status"] = "Hello World From Alarm in JSON";
    String ret;
    serializeJson(root,ret);
    return(ret);
}

////
/// config








