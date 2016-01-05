enumerating
newlyFetchedEntries
	^self results copyFrom:self indexOfFirstResult + 1 to: ((self indexOfFirstResult + self numberOfResultsToFetch) min: self numberOfResultsInIndex )