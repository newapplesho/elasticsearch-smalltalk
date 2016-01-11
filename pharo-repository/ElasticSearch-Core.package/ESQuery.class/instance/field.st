accessing
field
	^ field ifNil: [field := self defaultField]