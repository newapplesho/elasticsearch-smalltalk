fetching
fetchNextUnits
	| results curIndex nextFetchNum |
	curIndex := self currentIndex.
	nextFetchNum := (self searcher numberOfResultsToFetch min: self maxIndex - curIndex max: 1).
	results := self searcher searchFrom: curIndex size: nextFetchNum.
	^self resultStream nextPutAll: results