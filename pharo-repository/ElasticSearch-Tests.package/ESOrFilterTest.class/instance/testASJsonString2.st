tests-printing
testASJsonString2
	| filter orFilter |
	filter := ESTermFilter onField: 'title' forValue: 'Tuna'.
	orFilter := ESOrFilter new addFilter: filter; yourself. 
	self assert: orFilter asJsonString equals: '{"or":[{"term":{"title":"Tuna"}}]}'