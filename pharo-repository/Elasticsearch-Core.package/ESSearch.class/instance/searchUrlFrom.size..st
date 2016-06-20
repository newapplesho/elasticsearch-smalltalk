url creation
searchUrlFrom: fromIndex size: itemsSize
	^ self
		searchUrlWithParams:
			{('size' -> itemsSize).
			('from' -> fromIndex)} asDictionary