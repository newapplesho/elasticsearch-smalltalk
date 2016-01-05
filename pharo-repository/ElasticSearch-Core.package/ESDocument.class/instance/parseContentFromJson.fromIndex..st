parsing
parseContentFromJson: aJsonObject fromIndex: anESIndex
	| data |
	self
		id: (aJsonObject at: '_id');
		index: anESIndex;
		type: (aJsonObject at: '_type');
		version: (aJsonObject at: '_version').
	(aJsonObject at: '_source') 
		keysAndValuesDo: [ :selector :value | 
			| newValue |
			newValue := value.
			(selector = 'created' or: [ selector = 'modified' ])
				ifTrue: [ 
					newValue := DateAndTime fromString: value.
					self perform: (selector , ':') asSymbol withArguments: (Array with: newValue) ].
			self content at: selector put: newValue ]