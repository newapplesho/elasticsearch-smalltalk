tests-converting
testAsJsonString4
	| sort |
	sort := ESSortCriteria new field: 'price'; sortDescending; mode:'avg'; yourself.
	self assert: sort asJsonString equals: '{"price":{"order":"desc","mode":"avg"}}'.
	
	sort := ESSortCriteria new field: 'price'; sortDescending; useAvg; yourself.
	self assert: sort asJsonString equals: '{"price":{"order":"desc","mode":"avg"}}'.