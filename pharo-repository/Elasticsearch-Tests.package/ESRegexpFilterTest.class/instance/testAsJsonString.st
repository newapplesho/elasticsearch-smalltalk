tests-printing
testAsJsonString
	| filter |
	filter := ESRegexpFilter new onField: 'title' forValue: 'Tek.*'.
	self assert: filter asJsonString equals: '{"regexp":{"title":"Tek.*"}}'.