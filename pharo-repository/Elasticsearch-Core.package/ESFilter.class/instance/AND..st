operations
AND: aFilter
	aFilter ifNil:[ ^ ESAndFilter new addFilter: self; yourself. ].
	^ ESAndFilter new addFilter: self; addFilter: aFilter; yourself. 