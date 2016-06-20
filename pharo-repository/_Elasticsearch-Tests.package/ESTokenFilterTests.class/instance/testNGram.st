as yet unclassified
testNGram
	| ngram |
	ngram := ESNGramTokenFilter new
		name: 'my_nGram';
		maxGram: 20;
		yourself.
	self assert: ngram jsonContent equals: (Json readFrom: '{"type":"nGram","max_gram":20}' readStream)