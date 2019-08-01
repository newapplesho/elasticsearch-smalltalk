printing
jsonWriteContentValueOn: aStream
	
	aStream nextPut: ${.
	aStream writer nextPut: self field.
	aStream nextPut: $:.
	
	self hasModifiers ifTrue: [  
		aStream writer nextPut: self modifiers.
	] ifFalse: [  
		aStream writer nextPut: (self modifiers at: self queryKeyName ifAbsent: ['']).
	].

	aStream nextPut: $}.
	
	