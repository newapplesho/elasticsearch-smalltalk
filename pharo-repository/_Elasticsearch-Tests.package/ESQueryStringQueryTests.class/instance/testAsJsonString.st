tests-printing
testAsJsonString
	| query |
	query := ESQueryStringQuery new queryString:'donkey'.
	self assert: query asJsonString equals: '{"query_string":{"query":"donkey"}}'