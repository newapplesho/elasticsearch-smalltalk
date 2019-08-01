actions
settingsJsonContent
	| dict |
	dict := Dictionary new.
	dict at: 'number_of_shards' put: self shards.
	dict at: 'number_of_replicas' put: self replicas.
	self hasAnalysis
		ifTrue: [ dict at: 'analysis' put: self analysis jsonContent ].
	^ dict