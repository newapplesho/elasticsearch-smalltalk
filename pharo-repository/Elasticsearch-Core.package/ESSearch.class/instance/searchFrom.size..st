actions
searchFrom: fromIndex size: size
	| response |
	response := self parseJsonFromString: (self httpClient get: (self searchUrlFrom: fromIndex size: size) data: self jsonQuery).
	self ifResponse: response isNotErrorThenDo: [ :someJson | ^ self setResultsFrom: someJson ]