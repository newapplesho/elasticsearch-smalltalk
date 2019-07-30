parsing
parseContentFromJson: aJsonObject fromIndex: anESIndex
	self
		id: (aJsonObject at: '_id' ifAbsent:[]);
		index: anESIndex;
		type: (aJsonObject at: '_type' ifAbsent:[]);
		version: (aJsonObject at: '_version' ifAbsent:[]);
		score: (aJsonObject at: '_score' ifAbsent:[]).
	(aJsonObject at: '_source' ifAbsent:[#()]) 
		keysAndValuesDo: [ :selector :value | 
			| newValue |
			newValue := value.
			(selector = 'created' or: [ selector = 'modified' ])
				ifTrue: [ 
					newValue := DateAndTime fromString: value.
					self perform: selector asMutator with: newValue ].
			self content at: selector put: newValue ]