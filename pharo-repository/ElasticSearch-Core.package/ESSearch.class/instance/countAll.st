actions
countAll
	| query |
	query := ESMatchAllQuery new.
	self addQuery: query.
	^self count