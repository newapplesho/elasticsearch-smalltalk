printing
jsonWriteContentValueOn: aStream
	
	aStream nextPut: ${.
	self field jsonWriteOn: aStream.
	aStream nextPut: $:.
	
	self hasModifiers ifTrue: [  
		self modifiers jsonWriteOn: aStream.
	] ifFalse: [  
		(self modifiers at: self queryKeyName ifAbsent: ['']) jsonWriteOn: aStream.
	].

	aStream nextPut: $}.
	
	