tests-actions
testJsonQuery
	| index search query result |
	index := ESIndex indexNamed: 'sushi_store'. 
	index type:'store'.
	search := ESSearch new index: index.
	query := ESMatchQuery new.
	query query:'Tuna'.
	search addQuery: query.
	result := search jsonQuery.
	
	self assert: result equals: '{"query": {"match":{"_all":"Tuna"}}}'.