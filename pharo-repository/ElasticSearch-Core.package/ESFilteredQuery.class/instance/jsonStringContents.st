as yet unclassified
jsonStringContents
	| jObj1 jObj2 |
	jObj1 := JsonObject new.
	jObj1 at: 'filter' put: filter jsonStringContents.
	query ifNotNil:[
		jObj1 at: 'query' put: query jsonStringContents.].
	jObj2 := JsonObject new.
	jObj2 at: 'filtered' put: jObj1.
	^ jObj2