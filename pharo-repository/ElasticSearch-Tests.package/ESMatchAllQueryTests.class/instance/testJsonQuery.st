tests-actions
testJsonQuery
	| index search query result |
	index := ESIndex indexNamed: 'sushi_store'. 
	index type:'store'.
	search := ESSearch new index: index.
	query := ESMatchAllQuery new.
	search addQuery: query.
	result := search jsonQuery.
	
	self assert: result equals: '{"query": {"match_all":[]}}'.