tests-converting
testJsonQuery
	| index search query result |
	index := ESIndex indexNamed: 'sushi_store'.
	index type: 'sushi'.
	search := ESSearch new index: index.
	query := ESTermQuery new
		field: 'title';
		query: 'Tekkamaki'.
	search addQuery: query.
	result := search jsonQuery.
	self assert: result equals: '{"query":{"term":{"title":"Tekkamaki"}}}'.