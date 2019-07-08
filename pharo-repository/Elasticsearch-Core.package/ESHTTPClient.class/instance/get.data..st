http-method
get: aUrl data: aByteString
	^ self underlyingClientDo: [ :cli |
		| response |
		cli logLevel > 2 ifTrue: [self emitJsonBodyAttachEvent: aByteString].
		response := cli get: aUrl url contents: aByteString.
		cli logLevel > 2 ifTrue: [self emitJsonResponseReceivedEvent: response].
		response
	]