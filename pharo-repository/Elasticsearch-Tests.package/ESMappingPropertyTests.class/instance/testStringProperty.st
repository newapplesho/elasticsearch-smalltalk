as yet unclassified
testStringProperty
	| prop |
	prop := ESStringMappingProperty new
		name: 'message';
		indexAnalyzer: 'partial_word';
		store: 'yes';
		searchAnalyzer: 'full_word'.
	self
		assert: prop jsonContent
		equals:
			(Json
				readFrom: '{"store":"yes","index_analyzer":"partial_word","search_analyzer":"full_word","type":"string"}' readStream)