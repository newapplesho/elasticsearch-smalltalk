as yet unclassified
testGetDocument
	| retrievedDocument |
	document addToIndex: index.
	self assert: document hasId.
	self assert: document hasVersion.
	retrievedDocument := index getDocument: document.
	self assert: document content equals: retrievedDocument content