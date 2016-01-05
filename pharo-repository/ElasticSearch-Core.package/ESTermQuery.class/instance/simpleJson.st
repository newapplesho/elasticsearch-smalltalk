json
simpleJson
	| d1 d2 |
	d1 := JsonObject new.
	d1 at: self field put: self query.
	d2 := JsonObject new.
	d2 at: 'term' put: d1.
	^ d2