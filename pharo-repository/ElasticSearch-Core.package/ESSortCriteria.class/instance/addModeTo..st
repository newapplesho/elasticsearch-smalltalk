json
addModeTo: aDictionary
	self hasMode
		ifTrue: [ aDictionary at: 'mode' put: self mode ]