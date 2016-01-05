json
jsonStringContents
	^ self hasModifiers
		ifTrue: [ self modifiedJson ]
		ifFalse: [ self simpleJson ]