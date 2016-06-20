as yet unclassified
testSearchUsingFuzzyLikeThisQuery
	| query |
	query := ESFuzzyLikeThisQuery new query: 'documents'.
	search
		addQuery: query;
		search.
	self assert: search results notEmpty.
	self assert: (search results first content at: 'user') equals: 'Mr T'