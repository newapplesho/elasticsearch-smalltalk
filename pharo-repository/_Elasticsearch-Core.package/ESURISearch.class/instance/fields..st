parameters
fields: anObject
	"The selective fields of the document to return for each hit (either retrieved from the index if stored, or from the _source if not), comma delimited. Defaults to the internal _source field. Not specifying any value will cause no fields to return."

	self uriParameters at: 'fields' put: anObject