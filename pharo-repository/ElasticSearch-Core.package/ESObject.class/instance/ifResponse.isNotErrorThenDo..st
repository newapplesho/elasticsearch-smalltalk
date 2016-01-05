json
ifResponse: someJson isNotErrorThenDo: aBlock
	(self responseIsError: someJson)
		ifTrue: [ Error signal: (self errorMessageFor: someJson) ]
		ifFalse: [ aBlock value: someJson ]