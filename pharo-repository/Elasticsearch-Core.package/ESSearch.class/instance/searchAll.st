actions
searchAll
	| query |
	query := ESMatchAllQuery new.
	self query: query.
	^self search.