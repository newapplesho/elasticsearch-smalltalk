as yet unclassified
setUp
	super setUp.
	document addToIndex: index.
	self createSearch.
	(Delay forMilliseconds: 1000) wait	"need to give the index time to index the document. or something"