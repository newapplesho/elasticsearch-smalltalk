convenience
newDocument
	| dict |
	dict := Dictionary new.
	dict at: 'message' put: 'this is the documents content'.
	dict at: 'user' put: 'Mr T'.
	^ ESDocument withContent: dict