tests-printing
testAsJsonString2
	| aggregation |
	aggregation := ESMinAggregation new field:'price'; yourself.
	self assert: aggregation asJsonString equals: '{"min_price":{"min":{"field":"price"}}}'.