initialization
shardsAndReplicaSettings
	^ (self shards = 1 and: [ self replicas = 1 ])
		ifTrue: [ String new	"use the defaults" ]
		ifFalse: [ 
			| dict |
			dict := JsonObject new.
			dict at: 'shards' put: self shards.
			dict at: 'replicas' put: self replicas.
			'settings' -> dict ]