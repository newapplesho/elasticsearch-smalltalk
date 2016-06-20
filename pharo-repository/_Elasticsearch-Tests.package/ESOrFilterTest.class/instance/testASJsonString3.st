tests-printing
testASJsonString3
	| filter1 filter2 orFilter |
	filter1 := ESTermFilter onField: 'title' forValue: 'Tuna'.
	filter2 := ESTermFilter onField: 'price' forValue: 100.
	orFilter := filter1 OR: filter2.
	self assert: orFilter asJsonString equals: '{"or":[{"term":{"title":"Tuna"}},{"term":{"price":100}}]}'