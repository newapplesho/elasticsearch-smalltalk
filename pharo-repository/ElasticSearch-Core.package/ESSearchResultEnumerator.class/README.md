An ESSearchResultEnumerator class is a basic enumerator for fetching search result by small number of units.

Example:
index := ESIndex indexNamed: 'myindex'.
search := ESSearch index: index.
search numberOfResultsToFetch: 10.
enu := search enumerator.
[enu atEnd] whileFalse: [
	enu fetchNextUnits.
].

It just uses 'size' and 'from' URL parameter, so it gets slower if you fetch many times. 