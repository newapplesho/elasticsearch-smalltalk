as yet unclassified
jsonStringContents
	| d1 d2 |
	d1 := modifiers copy.
	d1 at: 'like_text' put: self query.
	d2 := JsonObject new.
	d2 at: self queryName put: d1.
	^ d2