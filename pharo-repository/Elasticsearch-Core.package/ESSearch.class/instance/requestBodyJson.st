accessing
requestBodyJson
	^ requestBodyJson ifNil:[ requestBodyJson := Dictionary new ].