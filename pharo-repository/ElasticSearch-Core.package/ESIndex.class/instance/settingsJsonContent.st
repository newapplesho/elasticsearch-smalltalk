initialization
settingsJsonContent
	| dict |
	dict := JsonObject new.
	dict at: 'shards' put: self shards.
	dict at: 'replicas' put: self replicas.
	self hasAnalysis
		ifTrue: [ dict at: 'analysis' put: self analysis jsonContent ].
	^ dict