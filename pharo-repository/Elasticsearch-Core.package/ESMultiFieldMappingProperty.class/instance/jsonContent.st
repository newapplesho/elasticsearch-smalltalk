as yet unclassified
jsonContent
	| d1 d2 |
	d1 := self modifiers copy.
	d1 at: 'type' put: self type.
	d2 := Dictionary new.
	self fields do: [ :each | d2 at: each name put: each jsonContent ].
	d1 at: 'fields' put: d2.
	^ d1