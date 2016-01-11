json
ifResponse: someJson isNotErrorThenDo: aBlock
	(self responseIsError: someJson)
		ifTrue: [ ESException signal: (self errorMessageFor: someJson) ]
		ifFalse: [ aBlock value: someJson ]