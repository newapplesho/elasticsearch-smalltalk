json
jsonStringFromCollection: aSet
	| d1 |
	d1 := Dictionary new.
	aSet do: [ :each | d1 at: each name put: each jsonContent ].
	^ d1