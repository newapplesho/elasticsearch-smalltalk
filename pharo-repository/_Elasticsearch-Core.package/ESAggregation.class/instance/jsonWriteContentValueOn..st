printing
jsonWriteContentValueOn: aStream
	aStream nextPut: ${.
	self type jsonWriteOn: aStream.
	aStream nextPut: $:.
	self modifiers jsonWriteOn: aStream.
	aStream nextPut: $}.