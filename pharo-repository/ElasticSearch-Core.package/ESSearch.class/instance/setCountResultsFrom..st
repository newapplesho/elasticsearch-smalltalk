private
setCountResultsFrom: response
	numberOfResultsInIndex := ((response at: 'hits') at: 'total').
	^numberOfResultsInIndex