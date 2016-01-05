as yet unclassified
testStringProperty
	| prop properties mapping |
	prop := ESStringMappingProperty new
		name: 'message';
		indexAnalyzer: 'partial_word';
		store: 'yes';
		searchAnalyzer: 'full_word'.
	properties := ESMappingProperties new.
	properties
		addProperty: prop;
		name: 'tweet'.
	mapping := ESMapping new
		addMappingProperty: properties;
		yourself.
	self
		assert: mapping jsonContent
		equals:
			(Json
				readFrom:
					'{"tweet":{"properties":{"message":{"store":"yes","index_analyzer":"partial_word","search_analyzer":"full_word","type":"string"}}}}'
						readStream)