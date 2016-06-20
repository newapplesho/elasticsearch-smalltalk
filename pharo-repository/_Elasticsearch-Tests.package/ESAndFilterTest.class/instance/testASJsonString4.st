tests-printing
testASJsonString4
	| andFilter filter |
	filter := ESTermFilter onField: 'title' forValue: 'Tuna'.
	andFilter := filter AND: nil. 
	self assert: andFilter asJsonString equals: '{"and":[{"term":{"title":"Tuna"}}]}'