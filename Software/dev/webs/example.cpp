///////////////////////////////////////////////////////////////////////////////
/// Example Implementation ////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////

#include "example.h"



// arduino init
bool ExampleClass::begin(fs::FS *fs, float scheduled_interval) {
   
    _fs = fs;
    _scheduled_interval = scheduled_interval;

    LOGGER.INFO("Example starting");

    // configure the scheduler checker. Do the things each second.
 
    _ticker.attach(this->_scheduled_interval, &ExampleClass::CheckScheduler, static_cast<void*>(this)); 
    return(true);
}

// show some log info about configuration, starts, and so on (e.g. position, dates, schedules)
void ExampleClass::IsRunning() {
    LOGGER.INFO("EXAMPLE is Running and Handling Requests!");
}





void ExampleClass::CheckScheduler(void *arg) {
    ExampleClass *self = reinterpret_cast<ExampleClass *>(arg);

    // running each SCHEDULE_PERIOD (1s)
    // TODO
    //DEBUGLOG("TICK: %s\n", self->GetTimeStampNow().c_str());
    
   
}


// get the status of the CatFeeder (index.html)
String ExampleClass::SayHello(AsyncWebServerRequest *request) {
    StaticJsonDocument<500> root;

    root["stamp"] = HELPER.GetTimeStampNow();
    root["Status"] = "Hello World From Example in JSON";
    String ret;
    serializeJson(root,ret);
    return(ret);
}

////
/// config








