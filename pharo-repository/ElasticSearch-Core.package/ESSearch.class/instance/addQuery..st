accessing
addQuery: aQuery
	self deprecated: 'Use #query:'.
	self requestBodyJson at:'query' put: aQuery.