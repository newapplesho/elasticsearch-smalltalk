tests-converting
testJsonQuery
	| index search query result |
	index := ESIndex indexNamed: 'sushi_store'. 
	index type:'sushi'.
	search := ESSearch new index: index.
	query := ESMultiMatchQuery new.
	query query:'tuna'.
	query fields: #('title' 'description').
	search addQuery: query.
	result := search jsonQuery.
	
	self assert: result equals: '{"query":{"multi_match":{"query":"tuna","fields":["title","description"]}}}'.