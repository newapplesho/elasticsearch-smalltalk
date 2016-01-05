actions
search
	| response |
	response := self parseJsonFromString: (self httpClient get: self queryUrl).
	self ifResponse: response isNotErrorThenDo: [ :someJson | ^self setResultsFrom: someJson ]