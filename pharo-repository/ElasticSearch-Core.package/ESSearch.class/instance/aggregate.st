actions
aggregate
	| response |
	response := self parseJsonFromString: (self httpClient get: self searchUrl data: self jsonQuery).
	self ifResponse: response isNotErrorThenDo: [ :someJson |  self setAggregateResultFrom: someJson ]