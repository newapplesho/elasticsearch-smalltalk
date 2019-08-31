printing
jsonWriteContentBeginOn: aStream
	aStream nextPut: ${.
	aStream writer nextPut: self queryType.
	aStream nextPut: $:.