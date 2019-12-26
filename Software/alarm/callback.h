///////////////////////////////////////////////////////////////////////////////
// Dispatcher callback ////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////

#ifndef __CALLBACK_H__
#define __CALLBACK_H__

void callbackHandler(AsyncWebServerRequest *request) {

	if (request->url() == "/alarm/hello") {
		//contruct and send and desired response
		//request->send(200, "text/plain", "<h1>hello world</h1>\n");
        String ret = ALARM.SayHello(request);
        DEBUGLOG("callbackHandler:/hello: (%s)\n",ret.c_str());
        request->send(200, "text/plain", ret);
        return;
	}
}

#endif