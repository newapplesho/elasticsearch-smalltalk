as yet unclassified
testSimpleStringQueryAsRequestBody
	| query |
	query := ESQueryStringQuery forString: 'donkey'.
	self assert: query asJsonString equals: '"query": {"query_string":{"query":"donkey"}}'