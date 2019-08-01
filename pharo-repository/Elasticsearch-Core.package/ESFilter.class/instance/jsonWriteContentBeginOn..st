printing
jsonWriteContentBeginOn: aStream
	aStream nextPut: ${.
	aStream writer nextPut: self filterType.
	aStream nextPut: $:.
	
	