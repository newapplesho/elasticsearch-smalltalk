documents
getDocument: anESDocument
	| response |
	response := self parseJsonFromString: (self httpClient get: (self urlToGetDocument: anESDocument)).
	^ ESDocument fromJson: response inIndex: self