parameters
searchType: anObject
	"The type of the search operation to perform. Can be dfs_query_then_fetch, dfs_query_and_fetch, query_then_fetch, query_and_fetch, count, scan. Defaults to query_then_fetch. See Search Type for more details on the different types of search that can be performed."

	self uriParameters at: 'search_type' put: anObject