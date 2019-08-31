as yet unclassified
testStandardAnalyzer
	| analyzer |
	analyzer := ESStandardAnalyzer new name: 'std'.
	self assert: analyzer jsonContent equals: (NeoJSONReader fromString:'{"type":"standard"}')