http-method
put: aUrl data: aByteString
	^ self underlyingClientDo: [ :cli |
		cli logLevel > 2 ifTrue: [self emitJsonBodyAttachEvent: aByteString].
		cli put: aUrl url contents: aByteString
	]