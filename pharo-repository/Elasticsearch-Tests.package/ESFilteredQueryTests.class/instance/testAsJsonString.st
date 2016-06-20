tests-printing
testAsJsonString
	| filter query |
	filter := ESTermFilter onField: 'title' forValue: 'Tekkamaki'.
	query := ESFilteredQuery new.
	query filter: filter.
	self assert: query asJsonString equals: '{"filtered":{"filter":{"term":{"title":"Tekkamaki"}}}}'