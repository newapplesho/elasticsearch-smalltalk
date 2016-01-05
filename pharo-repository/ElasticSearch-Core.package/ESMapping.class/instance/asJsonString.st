accessing
asJsonString
	| d1 |
	d1 := JsonObject new.
	d1 at: 'mappings' put: self jsonContent.
	^ d1 asJsonString