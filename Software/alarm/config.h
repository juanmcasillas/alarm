#ifndef __CONFIG_H__
#define __CONFIG_H__

#include <Arduino.h>
#include <FS.h>
#include <SPIFFS.h>
#include <ArduinoJson.h>

#include "debug.h"

class SirenClass {
    public:
        int pin = 0;
        int duration = 0;
        bool sounding = false; // alarm is sounding
        bool muted = false; // alarm is sounding, but don't sound (test)
        unsigned long time_left = 0;

};

#define MAX_ZONES 5     // maximum monitored zones (check pins availability)
#define MAX_KEYS  5     // maximum RFID valid keys numbers
#define KEY_SIZE  4     // RFID key size (4 bytes)
#define MAX_TIME_DRIFT  3600 // max time in seconds to avoid update the time from client in AP_MODE

#define MAX_TIME_DRIFT 3600  // max time drift in seconds when trying to setting the time as AP (no NTP, no RTC)

class ZoneClass {
    public:
        int pin = 0;
        String name = "default_zone";
        bool enabled = false;
        bool fired = false; // the read event
};

class ConfigClass {
    public:
        bool ap_mode = false; // false, station (default)
        bool dhcp = false; 
        String wifi_ssid = "XXXX";
        String wifi_passwd = "YYYY";
        String ap_name = "alarm_AP";
        String ap_passwd = "alarm_AP";
        String http_user = "admin";
        String http_passwd = "admin";
        int retries = 5;
        int retry_delay = 5000; // 5 seconds
        int http_port = 80;
        IPAddress ip = IPAddress(192,168,5,100);
        IPAddress gateway = IPAddress(192,168,5,1);
        IPAddress network = IPAddress(255,255,255,0);
        IPAddress dns = IPAddress(8,8,8,8);
        String ntp_server = "es.pool.ntp.org";
        int ntp_period = 15;
        int ntp_interval = 63;
        int ntp_timezone = 10; // madrid/spain
        bool ntp_daylight = true;
        float scheduled_interval = 1.0;
        String log_file = "/logfile.log";

        //
        // alarm configuration
        //
        SirenClass siren;
        ZoneClass zones[MAX_ZONES];
        byte keys[MAX_KEYS][KEY_SIZE] = { 
            { 0, 0, 0, 0 },
            { 0, 0, 0, 0 },
            { 0, 0, 0, 0 },
            { 0, 0, 0, 0 },
            { 0, 0, 0, 0 },
        };

        String passwd = "1234";

        bool LoadConfig();
        bool SaveConfig();
        void begin(fs::FS *fs, String config_file);

        // non persistent config
        bool armed = false;
        String last_event = "-";
        bool wifi_sta = true; // false if ESP32 started as AP


    protected:
        fs::FS *_fs;
        String _config_file;
};

extern ConfigClass CONFIG;
#endif