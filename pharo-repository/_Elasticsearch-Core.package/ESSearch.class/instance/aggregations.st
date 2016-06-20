accessing
aggregations
	^ aggregations ifNil: [ aggregations := ESAggregations new ]