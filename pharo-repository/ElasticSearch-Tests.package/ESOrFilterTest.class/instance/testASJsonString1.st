tests-printing
testASJsonString1
	| filter1 filter2 orFilter |
	filter1 := ESTermFilter onField: 'title' forValue: 'Tuna'.
	filter2 := ESTermFilter onField: 'price' forValue: 100.
	orFilter := ESOrFilter new addFilter: filter1; addFilter: filter2; yourself. 
	self assert: orFilter asJsonString equals: '{"or":[{"term":{"title":"Tuna"}},{"term":{"price":100}}]}'