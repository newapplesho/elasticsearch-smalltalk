accessing
jsonStringContents
	| d1 d2 d3 |
	d1 := modifiers copy.
	d1 at: 'value' put: self query.
	self flags ifNotNil:[
		d1 at: 'flags' put: self flags.].
	self maxDeterminizedStates ifNotNil:[
		d1 at: 'max_determinized_states' put: self flags.].
	d2 := JsonObject new.
	d2 at: self field put: d1.
	d3 := JsonObject new.
	d3 at: 'regexp' put: d2.
	^ d3