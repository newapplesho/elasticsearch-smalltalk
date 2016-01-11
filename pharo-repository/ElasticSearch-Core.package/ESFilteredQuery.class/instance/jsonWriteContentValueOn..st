printing
jsonWriteContentValueOn: aStream
	
	self hasModifiers ifTrue: [  
		self modifiers jsonWriteOn: aStream.
	] ifFalse: [  
		(self modifiers at: self queryKeyName ifAbsent: ['']) jsonWriteOn: aStream.
	].
	
	