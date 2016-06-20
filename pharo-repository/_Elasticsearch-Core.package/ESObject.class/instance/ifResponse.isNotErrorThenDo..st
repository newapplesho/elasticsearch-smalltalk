json
ifResponse: someJson isNotErrorThenDo: aBlock
	(self responseIsError: someJson)
		ifTrue: [ 
			ESException new
				properties: (self errorMessageFor: someJson);
				messageText: (self errorMessageFor: someJson) asString;
				signal ]
		ifFalse: [ aBlock value: someJson ]