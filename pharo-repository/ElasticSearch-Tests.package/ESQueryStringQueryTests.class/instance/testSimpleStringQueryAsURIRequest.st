as yet unclassified
testSimpleStringQueryAsURIRequest
	| query |
	query := ESQueryStringQuery forString: 'donkey'.
	self assert: query asQueryString equals: 'q=donkey'