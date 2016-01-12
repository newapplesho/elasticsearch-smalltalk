tests-printing
testAsJsonString
	| filter |
	filter := ESExistsFilter new onField: 'title' forValue: 'Tekkamaki'.
	self assert: filter asJsonString equals: '{"exists":{"title":"Tekkamaki"}}'.