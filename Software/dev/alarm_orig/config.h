#ifndef __CONFIG_H__
#define __CONFIG_H__

#include <Arduino.h>
#include <FS.h>
#include <SPIFFS.h>
#include <ArduinoJson.h>

#include "debug.h"

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

        bool LoadConfig();
        bool SaveConfig();
        void begin(fs::FS *fs, String config_file);
    
    protected:
        fs::FS *_fs;
        String _config_file;
};

extern ConfigClass CONFIG;

#endif