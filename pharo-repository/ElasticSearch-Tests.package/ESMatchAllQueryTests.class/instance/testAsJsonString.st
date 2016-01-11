tests-printing
testAsJsonString
	| query|
	query := ESMatchAllQuery new.
	self assert: query asJsonString equals: '{"match_all":{}}'.