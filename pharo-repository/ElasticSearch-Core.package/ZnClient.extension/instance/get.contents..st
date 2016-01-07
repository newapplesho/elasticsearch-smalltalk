*Elasticsearch-Core
get: url contents: object
	"Execute an HTTP GET request on url with the contents in a body and return the response #contents."

	^ self
		url: url;
		method: #GET;
		contents: object;
		execute