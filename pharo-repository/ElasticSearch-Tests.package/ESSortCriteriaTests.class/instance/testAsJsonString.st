tests-json
testAsJsonString
	| sort |
	sort := ESSortCriteria new fieldName: '_score'; sortDescending; yourself.
	self assert: sort asJsonString equals: '{"_score":{"order":"desc"}}'.