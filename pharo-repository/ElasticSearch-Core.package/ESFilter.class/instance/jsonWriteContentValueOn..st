printing
jsonWriteContentValueOn: aStream
	
	aStream nextPut: ${.
	self filterType jsonWriteOn: aStream.
	aStream nextPut: $:.
	self modifiers jsonWriteOn: aStream.
	aStream nextPut: $}.
	
	