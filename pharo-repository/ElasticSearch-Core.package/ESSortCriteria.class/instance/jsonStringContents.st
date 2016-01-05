json
jsonStringContents
	| d1 d2 |
	d1 := JsonObject new.
	self addOrderTo: d1.
	self addModeTo: d1.
	d2 := JsonObject new.
	d2 at: self fieldName put: d1.
	^ d2