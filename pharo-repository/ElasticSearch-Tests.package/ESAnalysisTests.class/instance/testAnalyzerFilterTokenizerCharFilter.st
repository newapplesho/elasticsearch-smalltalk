as yet unclassified
testAnalyzerFilterTokenizerCharFilter
	| analyzer analysis |
	analyzer := ESStandardAnalyzer new
		name: 'std';
		yourself.
	analysis := ESAnalysis new
		addAnalyzer: analyzer;
		yourself.
	self assert: analysis jsonContent equals: (Json readFrom: '{"analyzer":{"std":{"type":"standard"}}}' readStream)