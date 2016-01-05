printing
jsonStringContents
	| json |
	json := JsonObject new.
	json at: 'match_all' put: #().
	^ json