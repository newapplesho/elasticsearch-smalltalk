tests-converting
testAsJsonString1
	| sort |
	sort := ESSortCriteria new field: '_score'; sortDescending; yourself.
	self assert: sort asJsonString equals: '{"_score":{"order":"desc"}}'.