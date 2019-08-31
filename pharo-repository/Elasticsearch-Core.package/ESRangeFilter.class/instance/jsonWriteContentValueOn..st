printing
jsonWriteContentValueOn: aStream
	aStream nextPut:${.
	aStream writer nextPut: self field.
	aStream nextPut:$:.
	aStream writer nextPut: self modifiers.
	aStream nextPut:$}.