as yet unclassified
addField: aMappingProperty
	self fields add: aMappingProperty.
	self fields isEmpty
		ifTrue: [ self name: aMappingProperty name ]