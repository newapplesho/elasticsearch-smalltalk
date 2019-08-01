printing
jsonWriteContentValueOn: aStream

	self modifiers ifEmpty:[ ^aStream writer nextPut:  self field].	
	
	aStream nextPut: ${.
	aStream writer nextPut: self field.
	aStream nextPut: $:.
	aStream writer nextPut: self modifiers.

	aStream nextPut: $}.
	