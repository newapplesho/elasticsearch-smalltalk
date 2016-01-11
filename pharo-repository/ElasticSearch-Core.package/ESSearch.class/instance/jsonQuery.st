converting
jsonQuery
	self hasSortCriteria
				ifTrue: [ self requestBodyJson at:'sort' put: self sortParameters. ].
	"self hasAggregations
				ifTrue: [ self requestBodyJson at:'sort' put: self aggregations. ]."
	^ self requestBodyJson asJsonString
	"^ String
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
			s nextPut: $} ]"