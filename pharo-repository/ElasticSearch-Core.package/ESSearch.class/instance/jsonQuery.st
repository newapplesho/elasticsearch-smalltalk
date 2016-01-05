actions
jsonQuery
	^ String
		streamContents: [ :s | 
			s nextPut: ${.
			self queries
				doWithIndex: [ :eachQuery :idx | 
					s nextPutAll: eachQuery asJsonString.
					idx = self queries size
						ifFalse: [ s nextPutAll: ', ' ] ].
			self hasSortCriteria
				ifTrue: [ 
					s position > 1 ifTrue:[ s nextPutAll: ', '. ].
					s nextPutAll: self sortParameters asJsonString ].
			self hasAggregations
				ifTrue: [ 
					s position > 1 ifTrue:[ s nextPutAll: ', '. ].
					s nextPutAll: self aggregations asJsonString ].
			s nextPut: $} ]