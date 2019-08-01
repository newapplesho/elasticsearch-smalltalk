tests-converting
testJsonQuery
	| index search query minAggregation |
	index := ESIndex indexNamed: 'sushi_store'. 
	index type:'sushi'.
	search := ESSearch new; index: index.
	query := ESMatchAllQuery new.
	minAggregation := ESMinAggregation new field:'price'; aggregationName: 'price'; yourself.
	search query: query.
	search addAggregation: minAggregation.
	self assert: search jsonQuery equals: '{"query":{"match_all":{}},"aggregations":{"price":{"min":{"field":"price"}}}}'.