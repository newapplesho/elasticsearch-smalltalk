tests-printing
testAsJsonString1
	| aggregation |
	aggregation := ESMinAggregation new field:'price'; aggregationName: 'price'; yourself.
	self assert: aggregation asJsonString equals: '{"price":{"min":{"field":"price"}}}'.