parameters
timeout: anObject
	"A search timeout, bounding the search request to be executed within the specified time value and bail with the hits accumulated up to that point when expired. Defaults to no timeout."

	self uriParameters at: 'timeout' put: anObject