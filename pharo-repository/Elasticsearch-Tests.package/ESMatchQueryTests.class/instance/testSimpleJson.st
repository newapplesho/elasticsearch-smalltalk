tests-printing
testSimpleJson
	| query |
	query := ESMatchQuery new
		query: 'donkey';
		field: 'message';
		yourself.
	self assert: query asJsonString equals: '{"match":{"message":"donkey"}}'