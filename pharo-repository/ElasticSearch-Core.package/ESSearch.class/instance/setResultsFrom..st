private
setResultsFrom: response
	| hits |
	numberOfResultsInIndex := (response at: 'hits') at: 'total'.
	hits := ((response at: 'hits') at: 'hits').
	hits
		doWithIndex: [ :eachJsonDocument :idx | self results at: idx + self indexOfFirstResult put: (ESDocument fromJson: eachJsonDocument inIndex: self index) ].
	numberOfHits := hits size.
	^self results copyFrom: 1 to: numberOfHits