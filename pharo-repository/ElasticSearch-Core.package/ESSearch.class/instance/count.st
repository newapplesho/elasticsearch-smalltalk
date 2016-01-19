actions
count
	| response |
	response := self parseJsonFromString: (self httpClient get: (self searchUrlFrom: 0 size: 0) data: self jsonQuery).
	self ifResponse: response isNotErrorThenDo: [ :someJson | ^ self setCountResultsFrom: someJson].