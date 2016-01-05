actions
searchAll
	| query |
	query := ESMatchAllQuery new.
	self addQuery: query.
	^self search.