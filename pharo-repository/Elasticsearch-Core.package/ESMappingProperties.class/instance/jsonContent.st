accessing
jsonContent
	| d1 d2 |
	d1 := JsonObject new.
	self properties do: [ :each | d1 at: each name put: each jsonContent ].
	d2 := JsonObject new.
	d2 at: 'properties' put: d1.
	^ d2