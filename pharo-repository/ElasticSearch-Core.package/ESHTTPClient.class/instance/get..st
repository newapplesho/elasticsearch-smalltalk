http-method
get: aUrl
	| response |
	response := self client get: aUrl url.
	self client logLevel > 2 ifTrue: [self emitJsonResponseReceivedEvent: response].
	^response