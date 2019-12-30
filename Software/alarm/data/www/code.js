
var ALARM = new Object();
ALARM.UI = new Object();
ALARM.URL = new Object();
ALARM.STATUS = new Object();
ALARM.PIN = "";

ALARM.interval = 1000; // ms time to pull the status
ALARM.URL.get_status = "/get_status.json"; // /alarm/get_status
ALARM.URL.save_config = "/alarm/saveconfig";
ALARM.URL.config = "/config.html";
ALARM.timeout = 0; // timeouthandler

ALARM.UI.HandlePINButton = function(b) {
    
    // C -> clears the last element.
    if (ALARM.PIN.length-1 >= 0 && b == 'C') {
        ALARM.PIN = ALARM.PIN.substring(0, ALARM.PIN.length - 1);
        var t = $("#pintext").text();
        t = t.substring(0, t.length - 1);
        $("#pintext").text(t);
        return;
    }

    // erase one char
    if (ALARM.PIN.length == 0 && b == 'C') {
        ALARM.PIN = "";
        $("#pintext").text(ALARM.PIN);
        return;
    }

    // OK works when 3 digit is set.
    if (b == '#') {
        ALARM.PIN = "";
        $("#pintext").text("");        
        return;
    }
   
    if (ALARM.PIN.length == 4) {
        return;
    }    
    var t = $("#pintext").text();
    t = t + "*";
    $("#pintext").text(t);
    ALARM.PIN += b;

}

ALARM.GetStatus = function (set_timeout=true) {
    var postData = new FormData();
    //postData.append('grade_from', ONSIGHT.Defaults.grade_from);
    //postData.append("grade_to", ONSIGHT.Defaults.grade_to);

    var dobj = new Date();

    // "25/08/2019"
    var d_s = dobj.toLocaleDateString('es-ES', { 
        year: "numeric",
        month: "2-digit",
        day: "2-digit",
    });
    var t_s = dobj.toLocaleTimeString() // "11:00:49"
    postData.append('stamp',d_s + ' ' + t_s );

    //
    // call jquery instead, if works
    // ajax('/get_problem', 'POST', data, true, LoadMoves);
    // (this works)
    //
    $.ajax({
        url: ALARM.URL.get_status,
        type: "POST",
        contentType: false,
        processData: false,
        crossDomain: true,
        data: postData,
        success: function (data) {
            ALARM.LoadStatus(data,set_timeout);
        },
        // TODO add a spinner and trap errors here
        error: function (request, status, error) {          
            alert(status + ":" + request.responseText);

        },
        beforeSend: function (request, settings) {
        }
    });
}

/*
 * load alarm status
 */

ALARM.LoadStatus = function(retobj, set_timeout) {

    if (retobj["status"] == "unathorized") {
        alert("not authorized");
        return;
    }

    if (retobj["status"] != "OK") {
        alert("No he podido cargar los bloques: " + retobj["msg"] );
        return;
    }

    ALARM.STATUS = retobj;

    if ( document.getElementById("timestamp")) {
        document.getElementById("timestamp").innerHTML = ALARM.STATUS["time"];
    }

    if (document.getElementById("siren_sounding")) {
        document.getElementById("siren_sounding").style.display = (ALARM.STATUS["siren"] ? 'true' : 'none');
    }    

    // red: not armed
    // green armed

    var armed_light_class = "reddot";
    var armed_text = "DISARMED";
    var armed_check = false;

    if (ALARM.STATUS["armed"]) {
        armed_light_class = "greendot";
        armed_text = "ARMED";
        armed_check = true;
    }


    if (document.getElementById("armed_light")) document.getElementById("armed_light").className = armed_light_class;
    if (document.getElementById("armed_text")) document.getElementById("armed_text").innerHTML = armed_text;
    if (document.getElementById("armed_check")) document.getElementById("armed_check").checked = armed_check;

    // last event

    if (document.getElementById("last_event")) {
        document.getElementById("last_event").innerHTML = ALARM.STATUS["last_event"];
    }
    // zones
    // first, get template
    var zone_tpl = document.getElementById("zone_template").innerHTML;
    document.getElementById("zones_container").innerHTML = "";

    ALARM.STATUS["zones"].forEach(function(zone, index) {

        var zone_id = zone["id"];
        var zone_name = zone["name"];
        var zone_class =   ( zone["fired"] ? "reddot_s" : "greendot_s" );
        var zone_class =   ( zone["enabled"] ? zone_class : "greydot_s" );
        var zone_check_id =   "zone_check_" + zone_id;
        var zone_enabled = ( zone["enabled"] ? 'checked' : "" );

        var tpl = zone_tpl;
        tpl = tpl.replace('__ZONE_ID__', zone_id);
        tpl = tpl.replace('__ZONE_NAME__', zone_name);
        tpl = tpl.replace('__ZONE_CLASS__', zone_class);
        tpl = tpl.replace('__ZONE_CHECK_ID__', zone_check_id);
        tpl = tpl.replace('__zone_checked__', zone_enabled); // attrs become lowercase

        document.getElementById("zones_container").innerHTML += tpl;
    });


   
    // set the timeout so it works
    if (set_timeout) {
        ALARM.timeout = setTimeout(ALARM.GetStatus, ALARM.interval);
    }
}



ALARM.SaveConfig = function() {
    var postData = new FormData();

    var dobj = new Date();

    // "25/08/2019"
    var d_s = dobj.toLocaleDateString('es-ES', { 
        year: "numeric",
        month: "2-digit",
        day: "2-digit",
    });
    var t_s = dobj.toLocaleTimeString() // "11:00:49"
    postData.append('stamp',d_s + ' ' + t_s );

    // get values from configuration


    postData.append('armed', document.getElementById('armed_check').checked);
    postData.append('muted', document.getElementById('mute_siren').checked);

    // get all checkbox with id that starts with...
    var zones  = $('[id*="zone_check_"]');
    var ret = [];
    for (var i=0; i<zones.length; i++) {
        zone = zones[i];
        var o = Object();
        o.id = 1,
        o.enabled = zone.checked;
        ret.push(o);
    }

    postData.append('zones', JSON.stringify(ret));
    postData.append('auth', ALARM.PIN);
    //
    // call jquery instead, if works
    // ajax('/get_problem', 'POST', data, true, LoadMoves);
    // (this works)
    //
    $.ajax({
        url: ALARM.URL.save_config,
        type: "POST",
        contentType: false,
        processData: false,
        crossDomain: true,
        data: postData,
        success: function (data) {
            window.location.href(ALARM.URL.save_config);
        },
        // TODO add a spinner and trap errors here
        error: function (request, status, error) {          
            alert(status + ":" + request.responseText);

        },
        beforeSend: function (request, settings) {
        }
    });
}
