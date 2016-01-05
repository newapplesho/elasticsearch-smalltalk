initialization
getSettings
	| settings |
	settings := self parseJsonFromString: (self httpClient get: (self url addToPath: '_settings')).
	shards := (((settings at: self name) at: 'settings') at: 'index.number_of_shards') asNumber.
	replicas := (((settings at: self name) at: 'settings') at: 'index.number_of_replicas') asNumber