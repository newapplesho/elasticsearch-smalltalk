as yet unclassified
testSimpleJson
	self
		assert:
			(ESMatchQuery new
				query: 'donkey';
				field: 'message';
				yourself) asJsonString
		equals:'"query": {"match":{"message":"donkey"}}'