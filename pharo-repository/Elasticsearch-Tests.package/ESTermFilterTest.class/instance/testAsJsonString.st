tests-printing
testAsJsonString
	| filter |
	filter := ESTermFilter onField: 'title' forValue: 'Tekkamaki'.
	self assert: filter asJsonString equals: '{"term":{"title":"Tekkamaki"}}'.