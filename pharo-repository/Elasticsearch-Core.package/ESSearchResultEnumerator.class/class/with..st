instance creation
with: anESSearch
	| inst |
	inst := self new.
	"TODO: error handling"
	inst searcher: anESSearch.
	inst resultStream nextPutAll: (anESSearch searchFrom: 1 size: anESSearch numberOfResultsToFetch).
	^inst