initialization
deleteIndexNamed: aName
	^ aName notEmpty
		ifTrue: [ 
			| response |
			self name: aName.
			response := self parseJsonFromString: (self httpClient delete: self url).
			self ifResponse: response isNotErrorThenDo: [ :someJson | nil ] ]
		ifFalse: [ Error signal: 'you are trying to delete all the indicies' ]