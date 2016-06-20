Aggregations grew out of the facets module and the long experience of how users use it (and would like to use it) for real-time data analytics purposes.

Examples:
index := ESIndex indexNamed: 'stock'. 
search := ESSearch new; index: index.
aggregation := ESMaxAggregation new field:'price'.
search addAggregation: aggregation.
result := search aggregate.