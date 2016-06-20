printing
jsonWriteContentValueOn: aStream
	aStream nextPut:${.
	self field jsonWriteOn: aStream.
	aStream nextPut:$:.
	self modifiers jsonWriteOn: aStream.
	aStream nextPut:$}.