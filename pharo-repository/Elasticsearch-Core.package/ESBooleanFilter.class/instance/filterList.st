accessing
filterList
	^ filterList ifNil:[ filterList := OrderedCollection  new. ]