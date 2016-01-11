tests-converting
testJsonQuery
	| index search termFilter rangeFilter filter filteredQuery result |
	index := ESIndex indexNamed: 'sushi_store'. 
	index type:'sushi'.
	search := ESSearch new index: index.
	termFilter := ESTermFilter onField: 'title' forValue: 'Tuna'.
	rangeFilter := (ESRangeFilter onField:'price') gte: 1; lte: 100.
	filter := termFilter AND: rangeFilter. 
	filteredQuery := ESFilteredQuery new.
	filteredQuery filter: filter.
	search query: filteredQuery.
	result := search jsonQuery.
	
	self assert: result equals:'{"query":{"filtered":{"filter":{"and":[{"term":{"title":"Tuna"}},{"range":{"price":{"gte":1,"lte":100}}}]}}}}'.