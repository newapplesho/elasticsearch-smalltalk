as yet unclassified
testQueryStringSearch
	search
		addQuery: (ESQueryStringQuery for: 'documents');
		search.
	self assert: search results notEmpty.
	self assert: (search results first content at: 'user') equals: 'Mr T'