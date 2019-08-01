converting
asJsonString
	| d1 |
	d1 := Dictionary new.
	d1 at: 'type' put: self type.
	self modifiers keysAndValuesDo: [ :key :val | d1 at: key put: val ].
	^ (self name -> d1) 