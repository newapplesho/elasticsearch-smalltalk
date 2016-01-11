tests-printing
testModifiedJson
	| query |
	query := ESMatchQuery new
		query: 'donkey';
		fuzziness: 0.5;
		field: 'message';
		matchPhrasePrefix;
		yourself.
	self
		assert: query asJsonString
		equals: '{"match":{"message":{"fuzziness":0.5,"type":"phrase_prefix","query":"donkey"}}}'