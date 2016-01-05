urls
queryUrl
	| url |
	url := self searchUrl.
	self uriParameters keysAndValuesDo: [ :queryKey :queryValue | url queryAt: queryKey put: queryValue ].
	^ url