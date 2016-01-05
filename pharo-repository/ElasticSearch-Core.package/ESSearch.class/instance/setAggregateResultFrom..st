private
setAggregateResultFrom: response
	aggregateResult := (response at: 'aggregations').
	^aggregateResult