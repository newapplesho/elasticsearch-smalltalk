converting
jsonQuery
	self hasSortCriteria
				ifTrue: [ self requestBodyJson at:'sort' put: self sortParameters. ].
	self hasAggregations
				ifTrue: [ self requestBodyJson at:'aggregations' put: self aggregations. ].
	^ self requestBodyJson asJsonString