printing
jsonWriteContentBeginOn: aStream
	aStream nextPut: ${.
	self queryType jsonWriteOn: aStream.
	aStream nextPut: $:.