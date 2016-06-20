logging
emitJsonResponseReceivedEvent: aByteString
	(self newLogEvent: ESJsonResponseReceivedEvent) jsonString: aByteString; emit