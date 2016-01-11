printing
jsonWriteContentBeginOn: aStream
	aStream nextPut: ${.
	self filterType jsonWriteOn: aStream.
	aStream nextPut: $:.
	
	