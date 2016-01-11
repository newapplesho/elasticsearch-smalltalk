tests-printing
testJsonQuery2
	| index search result query1 query2 booleQuery |
	index := ESIndex indexNamed: 'sushi_store'.
	index type: 'sushi'.
	search := ESSearch new index: index.
	query1 := ESMatchQuery new matchPhrase.
	query1 query: 'Tuna'.
	query2 := ESMatchQuery new.
	query2 query: 'Tuna'.
	booleQuery := ESBoolQuery new.
	booleQuery
		should:
			{query1.
			query2}.
	booleQuery minimum_should_match: 1.
	search query: booleQuery.
	result := search jsonQuery.
	self
		assert: result
		equals:
			'{"query":{"bool":{"should":[{"match":{"_all":{"type":"phrase","query":"Tuna"}}},{"match":{"_all":"Tuna"}}],"minimum_should_match":1}}}'