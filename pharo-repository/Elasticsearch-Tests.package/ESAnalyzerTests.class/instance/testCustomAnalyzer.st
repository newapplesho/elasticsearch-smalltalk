as yet unclassified
testCustomAnalyzer
	| analyzer |
	analyzer := ESCustomAnalyzer new.
	analyzer
		name: 'partial_word';
		tokenizer: 'standard';
		filter: (Array with: 'my_nGram');
		charFilter: (Array with: 'myCharFilter').
	self
		assert: analyzer jsonContent
		equals:
			(Json
				readFrom: '{"type":"custom","tokenizer":"standard","filter":["my_nGram"],"char_filter":["myCharFilter"]}' readStream)