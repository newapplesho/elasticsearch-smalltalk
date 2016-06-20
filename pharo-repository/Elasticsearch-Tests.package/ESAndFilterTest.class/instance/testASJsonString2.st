tests-printing
testASJsonString2
	| filter andFilter |
	filter := ESTermFilter onField: 'title' forValue: 'Tuna'.
	andFilter := ESAndFilter new addFilter: filter; yourself. 
	self assert: andFilter asJsonString equals: '{"and":[{"term":{"title":"Tuna"}}]}'