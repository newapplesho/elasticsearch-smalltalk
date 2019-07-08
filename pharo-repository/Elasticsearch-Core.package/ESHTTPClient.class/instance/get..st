http-method
get: aUrl
	^ self underlyingClientDo: [ :cli |
		| response |
		response := cli get: aUrl url.
		cli logLevel > 2 ifTrue: [self emitJsonResponseReceivedEvent: response].
		response
	]
