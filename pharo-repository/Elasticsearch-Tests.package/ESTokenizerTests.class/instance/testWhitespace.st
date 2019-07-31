as yet unclassified
testWhitespace
	| wsp |
	wsp := ESWhitespaceTokenizer new
		name: 'whitespace_tokenizer';
		yourself.
	self assert: wsp jsonContent equals: (STONJSON fromString:'{"type":"whitespace"}')