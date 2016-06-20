urls
countUrlForType: aType
	| url |
	url := self url.
	aType notEmpty
		ifTrue: [ url addToPath: aType ].
	url addToPath: '_count'.
	^ url