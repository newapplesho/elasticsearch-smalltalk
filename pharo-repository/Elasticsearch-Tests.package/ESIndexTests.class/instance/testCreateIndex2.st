as yet unclassified
testCreateIndex2
	| filePath esIndex response |
	
	[ ESIndex deleteIndex: 'sushi_store'. ] on: Error do:[].
	
	filePath :=  FileSystem workingDirectory / 'sample/sushi.json'.
	filePath exists
		ifFalse:[ ^ false ].
	
	esIndex := ESIndex new name: 'sushi_store'.
	response := esIndex parseJsonFromString: (esIndex httpClient post: esIndex url data: filePath readStream contents).
	self assert: (response includes: 'error') not.