tests-printing
testAsJsonString2
	| query |
	query := ESRegexpQuery new field:'title'; query:'.*tuna.*'; boost: 1.2.
	self assert: query asJsonString equals: '{"regexp":{"title":{"value":".*tuna.*","boost":1.2}}}'.