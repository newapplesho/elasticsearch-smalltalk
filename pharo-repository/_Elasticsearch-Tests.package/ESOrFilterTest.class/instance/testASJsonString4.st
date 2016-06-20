tests-printing
testASJsonString4
	| filter orFilter |
	filter := ESTermFilter onField: 'title' forValue: 'Tuna'.
	orFilter := filter OR: nil.
	self assert: orFilter asJsonString equals: '{"or":[{"term":{"title":"Tuna"}}]}'