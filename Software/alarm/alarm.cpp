///////////////////////////////////////////////////////////////////////////////
/// Alarm Implementation //////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////

#include "alarm.h"

// arduino init
bool AlarmClass::begin(fs::FS *fs, float scheduled_interval) {
    _fs = fs;
    _scheduled_interval = scheduled_interval;

    this->configure_inputs();
    LOGGER.INFO("Alarm starting");

    // configure the scheduler checker. Do the things scheduled_interval

    _ticker.attach(this->_scheduled_interval, &AlarmClass::CheckScheduler, static_cast<void *>(this));
    return (true);
}

// show some log info about configuration, starts, and so on (e.g. position, dates, schedules)
void AlarmClass::IsRunning() {
    LOGGER.INFO("Alarm is Running and Handling Requests!");
}

void AlarmClass::CheckScheduler(void *arg) {
    AlarmClass *self = reinterpret_cast<AlarmClass *>(arg);

    //
    // running each SCHEDULE_PERIOD
    // CHECK RFID for armed, disarmed
    // check zones for ringing the alarm
    // etc
    //

    if (mfrc522.PICC_IsNewCardPresent()) {
        if (mfrc522.PICC_ReadCardSerial()) {
            if (self->valid_key(mfrc522.uid.uidByte)) {
                CONFIG.armed = ! CONFIG.armed;
                LOGGER.INFO("RFID read valid RFID key. Changing status to %s",
                    (CONFIG.armed ? "ARMED" : "DISARMED"));
            } else {
                String key = self->print_key(mfrc522.uid.uidByte);  
                LOGGER.WARNING("Trying to using an invalid key: %s", key.c_str());
            }
             mfrc522.PICC_HaltA();
        }
    }

    for (int i = 0; i < MAX_ZONES; i++) {
        if (CONFIG.zones[i].pin == 0) {
            continue;
        }
        int value = digitalRead(CONFIG.zones[i].pin);

        DEBUGLOG("%s: read: %d (%s)\n", 
                CONFIG.zones[i].name.c_str(), 
                value, 
                (CONFIG.zones[i].enabled ? "enabled" : "disabled"));

        CONFIG.zones[i].fired = (value == HIGH ? true : false);

        if (value == HIGH && CONFIG.zones[i].enabled && CONFIG.armed) {            
            CONFIG.siren.sounding = true; // set the SIREN to SOUND (working)
            LOGGER.INFO("Zone: %s wired to pin %d FIRED",CONFIG.zones[i].name.c_str(), CONFIG.zones[i].pin);
            CONFIG.last_event = HELPER.GetTimeStampNow() + " " + CONFIG.zones[i].name;
        }
    }

    // manage the ring alarm here, without delay

    if (CONFIG.siren.sounding) {

        if (!CONFIG.armed) {
            // alarm has been disarmed, stop the sound.
            LOGGER.INFO("Alarm OFF (disarmed)");
            CONFIG.siren.sounding = false;
            CONFIG.siren.time_left = 0;
            if (! CONFIG.siren.muted) {
                digitalWrite(CONFIG.siren.pin, LOW);  // off
            }
        } else {
            // alarm is armed, so check the cases
            if (CONFIG.siren.time_left == 0) {
                // Fire the alarm
                if (! CONFIG.siren.muted) {
                    digitalWrite(CONFIG.siren.pin, HIGH);  // on
                }
                CONFIG.siren.time_left = millis();
                LOGGER.INFO("Alarm ON");
            }
            else {
                if (millis() >  CONFIG.siren.time_left + CONFIG.siren.duration) {
                    if (! CONFIG.siren.muted) {
                        digitalWrite(CONFIG.siren.pin, LOW);  // off
                    }
                    LOGGER.INFO("Alarm OFF");
                    CONFIG.siren.sounding = false;
                    CONFIG.siren.time_left = 0;
                }

            }
        }
    }

}

void AlarmClass::configure_inputs() {
    // configure zones
    for (int i = 0; i < MAX_ZONES; i++) {
        if (CONFIG.zones[i].pin == 0) {
            continue;
        }
        pinMode(CONFIG.zones[i].pin, INPUT_PULLUP);
        LOGGER.INFO("Zone: %s is wired to pin %d",CONFIG.zones[i].name.c_str(), CONFIG.zones[i].pin);
    }

    // configure relay pin
    pinMode(CONFIG.siren.pin, OUTPUT);
    digitalWrite(CONFIG.siren.pin, LOW);  // alarm, off
}

String AlarmClass::GetStatus(AsyncWebServerRequest *request) {
    StaticJsonDocument<1024> root;

    // handle timeStamp set if AP mode is set
    // set the stamp as UTC instead TZ, this
    // can be configured, but for now, its ok

    if (request->hasParam("stamp", true) && CONFIG.wifi_sta == false) {
        AsyncWebParameter *p = request->getParam("stamp", true);
        String s_stamp = p->value().c_str();
        long stamp = s_stamp.toInt();

        // if drift is greater than one hour, update it
        // (to avoid constant time updates)
        if (abs(now() - stamp) > MAX_TIME_DRIFT) {
            setTime(stamp);
            LOGGER.INFO("Time updated");
        }
    }

    root["status"] = "OK";
    root["msg"] = "status.json";
    root["time"] = HELPER.GetTimeStampNow();
    root["armed"] = CONFIG.armed;
    root["last_event"] = CONFIG.last_event;
    root["siren"] = CONFIG.siren.sounding;
    root["muted"] = CONFIG.siren.muted;

    JsonArray jsonzones = root.createNestedArray("zones");
    for (int i = 0; i < MAX_ZONES; i++) {
        // don't store empty zones
        if (CONFIG.zones[i].pin == 0) {
            continue;
        }

        StaticJsonDocument<512> jsonzone;
        jsonzone["id"] = i;
        jsonzone["name"] = CONFIG.zones[i].name;
        jsonzone["enabled"] = CONFIG.zones[i].enabled;
        jsonzone["fired"] = CONFIG.zones[i].fired;
        jsonzones.add(jsonzone);
    }
    String ret;
    serializeJson(root, ret);
    return (ret);
}


String AlarmClass::SaveConfig(AsyncWebServerRequest *request, bool *error) {

    // STEP 1
    // requires one parameter, args with the json string inside, using POST (true= is POST)

    String json_value = "";
    String ret;
    StaticJsonDocument<512> root;

    *error = true;
    root["status"] = "ERROR";
    root["msg"] = "invalid arguments";
    root["time"] = HELPER.GetTimeStampNow();

    // if args not found, exit

    if (!request->hasParam("args", true)) {
        serializeJson(root, ret);
        return (ret);
    }

    AsyncWebParameter *p = request->getParam("args", true);
    json_value = p->value().c_str();

    // step 2, deserialize the JSON info
    StaticJsonDocument<2048> json;


    auto jerror = deserializeJson(json, json_value);
    if (jerror) {
        // error parsing json args
        root["msg"] = jerror.c_str();
        DEBUGLOG("SaveConfig: Failed to parse args: %s\n", jerror.c_str());

        serializeJson(root, ret);
        return (ret);
    }

    // process the save configuration values.
    // first, check the AUTH is set & is correct


    if ( !json.containsKey("auth") || 
         (json.containsKey("auth") && CONFIG.passwd != json["auth"].as<const char *>()) ) {
        // no auth, or invalid auth        
        root["msg"] = "bad auth";
        DEBUGLOG("SaveConfig: bad auth\n");
        serializeJson(root,ret);
        return(ret);
      
    }

    // extract parameters
    if (json.containsKey("armed")) CONFIG.armed = json["armed"].as<bool>();
    if (json.containsKey("muted")) CONFIG.siren.muted = json["muted"].as<bool>();

    if (json.containsKey("zones")) { 
        StaticJsonDocument<1024> zones = json["zones"];
        JsonArray array = zones.as<JsonArray>();
        int i = 0;
        for(JsonVariant v : array) {
            StaticJsonDocument<512> zone = v;
            int id = -1;
            int enabled = false;

            if (zone.containsKey("id")) { id = zone["id"].as<int>(); }
            if (zone.containsKey("enabled")) { enabled = zone["enabled"].as<bool>(); }
            
            if (id >= 0 && id < MAX_ZONES) {
                CONFIG.zones[id].enabled = enabled;
            }

            i++;
            if (i >= MAX_ZONES) {
                break;
            }
        }
    }
    // do the config persistent
    
    CONFIG.SaveConfig();
    LOGGER.INFO("Configuration Updated");

    *error = false;
    // return the Status information, instead my JSON
    return( this->GetStatus(request) );
}

///
/// rfid key helpers
///

bool AlarmClass::key_equal(byte *arrayA, byte *arrayB) {
    for (int index = 0; index < KEY_SIZE; index++) {
        if (arrayA[index] != arrayB[index]) return false;
    }
    return true;
}

bool AlarmClass::valid_key(byte *arrayA) {
    for (int i = 0; i < MAX_KEYS; i++) {
        byte *ptr = CONFIG.keys[i];
        if (this->key_equal(arrayA, ptr)) {
            return (true);
        }
    }

    return (false);
}

String AlarmClass::print_key(byte *buffer) {
    char m[512];
    sprintf(m, "%.2x %.2x %.2x %.2x",buffer[0], buffer[1], buffer[2], buffer[3]);
    String ret;
    ret = m;
    return(ret);
}
