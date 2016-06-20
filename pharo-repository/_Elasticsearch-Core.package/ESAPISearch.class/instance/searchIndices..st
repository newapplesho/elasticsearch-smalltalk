parameters
searchIndices: anArrayOfIndexNames
	self uriParameters at: 'search_indices' put: anArrayOfIndexNames asCommaString