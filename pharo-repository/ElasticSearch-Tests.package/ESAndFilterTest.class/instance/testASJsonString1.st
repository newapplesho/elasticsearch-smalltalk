tests-printing
testASJsonString1
	| filter1 filter2 andFilter |
	filter1 := ESTermFilter onField: 'title' forValue: 'Tuna'.
	filter2 := ESTermFilter onField: 'price' forValue: 100.
	andFilter := ESAndFilter new addFilter: filter1; addFilter: filter2; yourself. 
	self assert: andFilter asJsonString equals: '{"and":[{"term":{"title":"Tuna"}},{"term":{"price":100}}]}'