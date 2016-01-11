operations
OR: aFilter
	aFilter ifNil:[ ^ ESOrFilter new addFilter: self; yourself ].
	^ ESOrFilter new addFilter: self; addFilter: aFilter; yourself. 