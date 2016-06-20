as yet unclassified
testURISearch
	search
		queryString: 'documents';
		search.
	self assert: search results notEmpty.
	self assert: (search results first content at: 'message') equals: 'this is the documents content'