tests-converting
testJsonQuery
	| index search query result |
	index := ESIndex indexNamed: 'sushi_store'. 
	index type:'sushi'.
	search := ESSearch new index: index.
	query := ESMatchAllQuery new.
	search query: query.
	result := search jsonQuery.
	
	self assert: result equals: '{"query":{"match_all":{}}}'.