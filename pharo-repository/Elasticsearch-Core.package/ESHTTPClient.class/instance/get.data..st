http-method
get: aUrl data: data
	| conts |
	conts := self jsonStringFrom: data.
	^ self underlyingClientDo: [ :cli |
		| response |
		cli logLevel > 2 ifTrue: [self emitJsonBodyAttachEvent: conts].
		response := cli get: aUrl url contents: conts.
		cli logLevel > 2 ifTrue: [self emitJsonResponseReceivedEvent: response].
		response contents
	]