tests-converting
testJsonQuery2
	| index search query result filter fquery |
	index := ESIndex indexNamed: 'sushi_store'. 
	index type:'sushi'.
	search := ESSearch new index: index.
	filter := ESTermFilter onField: 'title' forValue: 'Tekkamaki'.
	fquery := ESFilteredQuery new.
	fquery filter: filter.
	query := ESMatchQuery new.
	query query:'fish'.
	fquery query: query.
	search query: fquery.
	result := search jsonQuery.
	
	self assert: result equals: '{"query":{"filtered":{"filter":{"term":{"title":"Tekkamaki"}},"query":{"match":{"_all":"fish"}}}}}'.