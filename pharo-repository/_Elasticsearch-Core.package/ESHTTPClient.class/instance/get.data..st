http-method
get: aUrl data: aByteString
	| response |
	self client logLevel > 2 ifTrue: [self emitJsonBodyAttachEvent: aByteString].
	response := self client get: aUrl url contents: aByteString.
	self client logLevel > 2 ifTrue: [self emitJsonResponseReceivedEvent: response].
	^response