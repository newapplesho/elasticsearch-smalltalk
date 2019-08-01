tests-printing
testAsJsonString1
	| aggregation |
	aggregation := ESMinAggregation new field:'price'; aggregationName: 'price'; yourself.
	self assert: aggregation jsonStringContents equals: '{"price":{"min":{"field":"price"}}}'.