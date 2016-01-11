tests-printing
testASJsonString1
	| filter notFilter |
	filter := ESTermFilter onField: 'title' forValue: 'Tuna'.
	notFilter := filter not.
	self assert: notFilter asJsonString equals: '{"not":{"filter":{"term":{"title":"Tuna"}}}}'