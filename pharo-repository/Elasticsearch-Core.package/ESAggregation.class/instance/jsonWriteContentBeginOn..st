printing
jsonWriteContentBeginOn: aStream
	aStream nextPut: ${.
	aStream writer nextPut: self aggregationName.
	aStream nextPut: $:.