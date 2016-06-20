as yet unclassified
index: aString
	"Set to analyzed for the field to be indexed and searchable after being broken down into token using an analyzer. not_analyzed means that its still searchable, but does not go through any analysis process or broken down into tokens. no means that it wonât be searchable at all (as an individual field; it may still be included in _all). Defaults to analyzed."

	self modifiers at: 'index' put: aString