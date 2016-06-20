tests-printing
testAsJsonString1
	| query |
	query := ESRegexpQuery new field:'title'; query:'.*tuna.*'.
	self assert: query asJsonString equals: '{"regexp":{"title":".*tuna.*"}}'.