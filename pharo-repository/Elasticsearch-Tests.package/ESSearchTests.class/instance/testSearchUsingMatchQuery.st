as yet unclassified
testSearchUsingMatchQuery
	| query |
	query := ESMatchQuery new query: 'documents'.
	search
		addQuery: query;
		search.
	self assert: search results notEmpty.
	self assert: (search results first content at: 'user') equals: 'Mr T'