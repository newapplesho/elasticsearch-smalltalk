accessing
jsonContent
	| d1 |
	d1 := self modifiers copy.
	d1 at: 'type' put: self type.
	^ d1