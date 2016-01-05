initialization
initialize: n

	super initialize: n.
	aggregationBody := JsonObject new.
	aggregationType := JsonObject new at: self type put: aggregationBody; yourself.
	self at: self aggregationName put: (Dictionary new addAll: aggregationType; yourself).