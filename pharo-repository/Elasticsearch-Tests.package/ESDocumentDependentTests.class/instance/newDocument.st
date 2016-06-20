convenience
newDocument
	| dict |
	dict := JsonObject new.
	dict at: 'message' put: 'this is the documents content'.
	dict at: 'user' put: 'Mr T'.
	^ ESDocument withContent: dict