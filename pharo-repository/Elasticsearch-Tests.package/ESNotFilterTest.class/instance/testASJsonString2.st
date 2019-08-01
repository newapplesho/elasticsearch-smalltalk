tests-printing
testASJsonString2
	| filter notFilter |
	filter := ESTermFilter onField: 'title' forValue: 'Tuna'.
	notFilter := filter not cache: true.
	self assert: notFilter asJsonString equals: '{"not":{"filter":{"term":{"title":"Tuna"}},"_cache":true}}'