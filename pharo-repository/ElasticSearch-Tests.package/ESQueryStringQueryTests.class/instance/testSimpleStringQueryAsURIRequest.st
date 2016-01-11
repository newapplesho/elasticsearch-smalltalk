as yet unclassified
testSimpleStringQueryAsURIRequest
	| query |
	query := ESQueryStringQuery new queryString: 'donkey'.
	self assert: query asQueryString equals: 'q=donkey'