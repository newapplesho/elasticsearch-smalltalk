tests-printing
testASJsonString3
	| andFilter filter1 filter2 |
	filter1 := ESTermFilter onField: 'title' forValue: 'Tuna'.
	filter2 := ESTermFilter onField: 'price' forValue: 100.
	andFilter := filter1 AND: filter2. 
	self assert: andFilter asJsonString equals: '{"and":[{"term":{"title":"Tuna"}},{"term":{"price":100}}]}'