as yet unclassified
testModifiedJson
	self
		assert:
			(Json readFrom: (ESMatchQuery new
				query: 'donkey';
				fuzziness: 0.5;
				field: 'message';
				matchPhrasePrefix;
				yourself) asJsonString readStream)
		equals:(Json readFrom: '"query": {"match":{"message":{"fuzziness":0.5,"type":"phrase_prefix","query":"donkey"}}}' readStream)