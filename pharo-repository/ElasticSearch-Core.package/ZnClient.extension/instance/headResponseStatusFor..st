*Elasticsearch-Core
headResponseStatusFor: aUrl
	"Execute an HTTP GET request on url with the contents in a body and return the response #contents."

	self
		url: aUrl;
		method: #HEAD;
		execute.
	^ self response code