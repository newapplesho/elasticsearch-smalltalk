parameters
defaultOperator: anObject
	"The default operator to be used, can be AND or OR. Defaults to OR."

	self uriParameters at: 'default_operator' put: anObject