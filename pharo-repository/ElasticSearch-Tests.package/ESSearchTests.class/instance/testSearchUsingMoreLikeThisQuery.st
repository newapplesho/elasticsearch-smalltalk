as yet unclassified
testSearchUsingMoreLikeThisQuery
	| query |
	query := ESMoreLikeThisQuery new query: 'documents'.
	self newDocument addToIndex: index.
	search
		addQuery: query;
		search.
	self assert: search results notEmpty.
	self assert: (search results first content at: 'user') equals: 'Mr T'