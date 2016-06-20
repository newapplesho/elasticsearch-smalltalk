as yet unclassified
testStringProperty
	| prop properties |
	prop := ESStringMappingProperty new
		name: 'message';
		indexAnalyzer: 'partial_word';
		store: 'yes';
		searchAnalyzer: 'full_word'.
	properties := ESMappingProperties new.
	properties
		addProperty: prop;
		name: 'tweet'.
	self
		assert: properties jsonContent
		equals:
			(Json
				readFrom:
					'{"properties":{"message":{"store":"yes","index_analyzer":"partial_word","search_analyzer":"full_word","type":"string"}}}'
						readStream)