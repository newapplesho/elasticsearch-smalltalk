tests-converting
testAsJsonString5
	| sort |
	sort := ESSortCriteria new field: 'price'; sortDescending; missing:'_last'; yourself.
	self assert: sort asJsonString equals: '{"price":{"order":"desc","missing":"_last"}}'.