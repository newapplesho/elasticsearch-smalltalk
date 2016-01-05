parameters
lowercaseExpandedTerms: anObject
	"Should terms be automatically lowercased or not. Defaults to true."

	self uriParameters at: 'lowercase_expanded_terms' put: anObject