as yet unclassified
testNGram
	| ngram |
	ngram := ESNGramTokenFilter new
		name: 'my_nGram';
		maxGram: 20;
		yourself.
	self assert: ngram jsonContent equals: (NeoJSONReader fromString: '{"type":"nGram","max_gram":20}')