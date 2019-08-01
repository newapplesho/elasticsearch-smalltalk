as yet unclassified
testWhitespace
	| wsp |
	wsp := ESWhitespaceTokenizer new
		name: 'whitespace_tokenizer';
		yourself.
	self assert: wsp jsonContent equals: (NeoJSONReader fromString:'{"type":"whitespace"}')