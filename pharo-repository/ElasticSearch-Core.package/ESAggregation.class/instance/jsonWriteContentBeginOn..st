printing
jsonWriteContentBeginOn: aStream
	aStream nextPut: ${.
	self aggregationName jsonWriteOn: aStream.
	aStream nextPut: $:.