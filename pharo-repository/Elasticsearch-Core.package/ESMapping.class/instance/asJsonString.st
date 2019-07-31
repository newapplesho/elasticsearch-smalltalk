accessing
asJsonString
	| d1 |
	d1 := Dictionary new.
	d1 at: 'mappings' put: self jsonContent.
	^ d1 asJsonString