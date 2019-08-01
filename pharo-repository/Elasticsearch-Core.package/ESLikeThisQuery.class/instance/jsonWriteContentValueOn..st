printing
jsonWriteContentValueOn: aStream
	self hasModifiers
		ifTrue: [ aStream writer nextPut: self modifiers]
		ifFalse: [ aStream writer nextPut: (self modifiers at: self queryKeyName ifAbsent: [ '' ])]