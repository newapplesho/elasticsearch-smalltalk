public
onField: aFieldToFilter forValue: aSingleTerm
	| obj |
	obj := JsonObject new.
	obj at: aFieldToFilter put: aSingleTerm.
	self at: self filterType put: obj