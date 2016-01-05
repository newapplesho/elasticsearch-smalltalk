accessing
jsonContent
	| d1 |
	d1 := JsonObject new.
	self properties do: [ :each | d1 at: each name put: each jsonContent ].
	^ d1