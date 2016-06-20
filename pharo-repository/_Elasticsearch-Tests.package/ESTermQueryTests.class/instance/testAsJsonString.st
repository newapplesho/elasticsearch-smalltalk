tests-printing
testAsJsonString
	| query |
	query := ESTermQuery new field:'title'; query:'Tekkamaki'.
	self assert: query asJsonString equals: '{"term":{"title":"Tekkamaki"}}'.