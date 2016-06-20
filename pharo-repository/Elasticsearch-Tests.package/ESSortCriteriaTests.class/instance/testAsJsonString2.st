tests-converting
testAsJsonString2
	| sort |
	sort := ESSortCriteria new field: '_score'; sortAscending; yourself.
	self assert: sort asJsonString equals: '{"_score":{"order":"asc"}}'.