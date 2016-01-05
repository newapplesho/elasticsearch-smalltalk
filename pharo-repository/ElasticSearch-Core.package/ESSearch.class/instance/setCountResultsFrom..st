private
setCountResultsFrom: response
	numberOfResultsInIndex := response at: 'count'.
	^numberOfResultsInIndex