initialization
settingsJson
	| dict |
	dict := JsonObject new.
	dict at: 'shards' put: self shards.
	dict at: 'replicas' put: self replicas.
	dict at: 'analysis' put: self analysis jsonContent.
	^ ('settings' -> dict) asJsonString