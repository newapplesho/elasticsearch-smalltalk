as yet unclassified
testBasic
	| analyzer analysis |
	analyzer := ESStandardAnalyzer new
		name: 'std';
		yourself.
	analysis := ESAnalysis new
		addAnalyzer: analyzer;
		yourself.
	self assert: analysis jsonContent equals: (STONJSON fromString:'{"analyzer":{"std":{"type":"standard"}}}')