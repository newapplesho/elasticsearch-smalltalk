fetching
fetchUpToEnd
	| curIndex results |
	curIndex := self currentIndex.
	results := self searcher searchFrom: curIndex size: self maxIndex - curIndex.
	^self resultStream nextPutAll: results