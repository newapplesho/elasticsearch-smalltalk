as yet unclassified
jsonStringContents
	| d1 |
	d1 := Dictionary new.
	d1 at: 'type' put: self type.
	self modifiers keysAndValuesDo: [ :key :value | d1 at: key put: value ].
	^ d1