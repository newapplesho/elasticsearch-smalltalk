as yet unclassified
testWhitespace
	| wsp |
	wsp := ESWhitespaceTokenizer new
		name: 'whitespace_tokenizer';
		yourself.
	self assert: wsp jsonContent equals: (Json readFrom: '{"type":"whitespace"}' readStream)