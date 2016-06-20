parameters
queryString: aString
	"The query string (maps to the query_string query, see Query String Query for more details)."

	self uriParameters at: 'q' put: aString