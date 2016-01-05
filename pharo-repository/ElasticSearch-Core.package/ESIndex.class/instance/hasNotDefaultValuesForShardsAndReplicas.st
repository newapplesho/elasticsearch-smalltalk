testing
hasNotDefaultValuesForShardsAndReplicas
	^ self shards ~= 5 or: [ self replicas ~= 1 ]