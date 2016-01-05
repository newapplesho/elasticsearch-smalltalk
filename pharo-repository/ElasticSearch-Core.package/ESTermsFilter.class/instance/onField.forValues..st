public
onField: aFieldToFilter forValues: aTerms
	| obj |
	obj := JsonObject new.
	obj at: aFieldToFilter put: aTerms.
	self at: self filterType put: obj