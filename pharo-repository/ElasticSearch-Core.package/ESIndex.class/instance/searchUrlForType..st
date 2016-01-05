urls
searchUrlForType: aType
	| url |
	url := self url.
	aType notEmpty
		ifTrue: [ url addToPath: aType ].
	url addToPath: '_search'.
	^ url