actions
search
	| response |
	response := self parseJsonFromString: (self httpClient get: self searchUrl data: self jsonQuery).
	response inspect.
	self ifResponse: response isNotErrorThenDo: [ :someJson | ^ self setResultsFrom: someJson ]