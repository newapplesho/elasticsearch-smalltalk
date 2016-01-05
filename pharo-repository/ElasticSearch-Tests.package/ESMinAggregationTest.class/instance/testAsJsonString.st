testing
testAsJsonString
	self assert: '{"price":{"min":{"field":"price"}}}' = aggregation asJsonString.