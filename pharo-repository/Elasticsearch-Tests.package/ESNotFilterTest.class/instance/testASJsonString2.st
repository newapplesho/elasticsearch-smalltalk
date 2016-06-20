tests-printing
testASJsonString2
	| filter notFilter |
	filter := ESTermFilter onField: 'title' forValue: 'Tuna'.
	notFilter := filter not cache: true.
	self assert: notFilter asJsonString equals: '{"not":{"_cache":true,"filter":{"term":{"title":"Tuna"}}}}'