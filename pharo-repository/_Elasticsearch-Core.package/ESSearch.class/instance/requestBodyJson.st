accessing
requestBodyJson
	^ requestBodyJson ifNil:[ requestBodyJson := JsonObject new ].