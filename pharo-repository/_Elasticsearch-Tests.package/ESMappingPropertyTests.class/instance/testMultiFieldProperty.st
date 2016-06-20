as yet unclassified
testMultiFieldProperty
	| prop1 prop2 multiField |
	prop1 := ESStringMappingProperty new
		name: 'message';
		indexAnalyzer: 'partial_word';
		store: 'yes';
		searchAnalyzer: 'full_word'.
	prop2 := ESStringMappingProperty new
		name: 'secondary';
		indexAnalyzer: 'partial_word';
		store: 'yes';
		searchAnalyzer: 'full_word'.
	multiField := ESMultiFieldMappingProperty new
		name: 'message';
		addField: prop1;
		addField: prop2.
	self
		assert: multiField jsonContent
		equals:
			(Json
				readFrom:
					'{"type":"multi_field","fields":{"message":{"store":"yes","index_analyzer":"partial_word","search_analyzer":"full_word","type":"string"},"secondary":{"store":"yes","index_analyzer":"partial_word","search_analyzer":"full_word","type":"string"}}}'
						readStream)