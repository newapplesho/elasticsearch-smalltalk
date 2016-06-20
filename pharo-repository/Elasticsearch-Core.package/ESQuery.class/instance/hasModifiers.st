testing
hasModifiers
	^ (self modifiers size = 1 and: [ self modifiers includesKey: self queryKeyName]) not