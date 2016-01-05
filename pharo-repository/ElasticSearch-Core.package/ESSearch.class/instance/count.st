actions
count
	| response |
	response := self parseJsonFromString: (self httpClient get: self countUrl data: self jsonQuery).
	self ifResponse: response isNotErrorThenDo: [ :someJson | ^ self setCountResultsFrom: someJson ]