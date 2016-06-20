logging
emitJsonBodyAttachEvent: aByteString
	(self newLogEvent: ESJsonBodyAttachEvent) jsonString: aByteString; emit