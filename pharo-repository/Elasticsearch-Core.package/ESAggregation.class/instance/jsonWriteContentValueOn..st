printing
jsonWriteContentValueOn: aStream
	aStream nextPut: ${.
	aStream writer nextPut: self type.
	aStream nextPut: $:.
	aStream writer nextPut: self modifiers.
	aStream nextPut: $}.