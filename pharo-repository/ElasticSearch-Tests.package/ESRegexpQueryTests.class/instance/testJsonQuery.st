tests-actions
testJsonQuery
	| index search query result |
	index := ESIndex indexNamed: 'sushi_store'. 
	index type:'store'.
	search := ESSearch new index: index.
	query := ESRegexpQuery new field:'title'; query:'.*tuna.*'.
	search addQuery: query.
	result := search jsonQuery.
	
	self assert: result equals: '{"query": {"regexp":{"title":{"value":".*tuna.*"}}}}'.