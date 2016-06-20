as yet unclassified
testAddDocument
	document addToIndex: index.
	self assert: document hasId.
	self assert: document hasVersion