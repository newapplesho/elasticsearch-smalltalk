tests-actions
testJsonQuery1
	| index search  result filter fquery |
	index := ESIndex indexNamed: 'sushi_store'. 
	index type:'store'.
	search := ESSearch new index: index.
	filter := ESTermFilter onField: 'title' forValue: 'Tekkamaki'.
	fquery := ESFilteredQuery new.
	fquery filter: filter.
	search addQuery: fquery.
	result := search jsonQuery.
	
	self assert: result equals: '{"query": {"filtered":{"filter":{"term":{"title":"Tekkamaki"}}}}}'.