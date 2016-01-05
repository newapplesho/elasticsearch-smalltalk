accessing
aggregationName: anObject

	self removeKey:  aggregationName.
	self at: anObject put: self aggregationType.
	aggregationName := anObject.