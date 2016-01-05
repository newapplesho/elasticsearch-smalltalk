operations
AND: aFilter
	(aFilter size = 0 ) ifTrue:[ ^ self  ].
	(self size = 0 ) ifTrue:[ ^ aFilter  ].
	^ ESAndFilter new addFilter: self; addFilter: aFilter; yourself. 