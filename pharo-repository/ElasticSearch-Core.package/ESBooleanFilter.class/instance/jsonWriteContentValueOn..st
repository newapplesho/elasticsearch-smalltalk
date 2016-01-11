printing
jsonWriteContentValueOn:  aStream
	aStream nextPut:${.
	self filterType jsonWriteOn: aStream.
	aStream nextPut:$:.
	self filterList jsonWriteOn: aStream.
	aStream nextPut:$}.