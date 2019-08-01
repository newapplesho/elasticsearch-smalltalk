accessing
jsonContent
	| d1 d2 |
	d1 := Dictionary new.
	self properties do: [ :each | d1 at: each name put: each jsonContent ].
	d2 := Dictionary new.
	d2 at: 'properties' put: d1.
	^ d2