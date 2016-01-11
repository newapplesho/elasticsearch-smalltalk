tests-converting
testAsJsonString3
	| sort |
	sort := ESSortCriteria new field: 'title'; yourself.
	self assert: sort asJsonString equals: '"title"'.