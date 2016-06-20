parameters
analyzeWildcard: anObject
	"Should wildcard and prefix queries be analyzed or not. Defaults to false."

	self uriParameters at: 'analyze_wildcard' put: anObject