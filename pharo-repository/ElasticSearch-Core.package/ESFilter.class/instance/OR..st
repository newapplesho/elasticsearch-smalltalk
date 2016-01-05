operations
OR: aFilter
	(aFilter size = 0 ) ifTrue:[ ^ self  ].
	(self size = 0 ) ifTrue:[ ^ aFilter  ].
	^ ESOrFilter new addFilter: self; addFilter: aFilter; yourself. 