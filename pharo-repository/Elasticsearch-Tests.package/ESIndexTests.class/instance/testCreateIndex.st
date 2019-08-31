as yet unclassified
testCreateIndex
	| mapping analysis properties |
	index
		shards: 34;
		replicas: 19.
	analysis := ESAnalysis new
		addAnalyzer:
			(ESStandardAnalyzer new
				name: 'std';
				yourself).
	index analysis: analysis.
	mapping := ESMapping new.
	properties := ESMappingProperties new
		name: 'mp';
		addProperty:
				(ESStringMappingProperty new
						name: 'message';
						indexAnalyzer: 'partial_word';
						store: 'yes';
						searchAnalyzer: 'full_word';
						yourself).
	mapping addMappingProperty: properties.
	index mapping: mapping.
	self assert: index indexCreationJsonSettings equals:(NeoJSONReader fromString: '{"mappings":{"mp":{"properties":{"message":{"store":"yes","index_analyzer":"partial_word","search_analyzer":"full_word","type":"string"}}}},"settings":{"number_of_shards":34,"analysis":{"analyzer":{"std":{"type":"standard"}}},"number_of_replicas":19}}')