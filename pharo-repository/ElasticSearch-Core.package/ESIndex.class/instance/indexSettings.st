initialization
indexSettings
	^ String
		streamContents: [ :s | 
			s nextPut: ${.
			self hasMapping
				ifTrue: [ s nextPutAll: self mapping asJsonString ].
			self hasSettings
				ifTrue: [ 
					self nextPutAll: self shardsAndReplicaSettings asJson.
					self hasAnalysis
						ifTrue: [ s nextPutAll: self analysis asJsonString ] ].
			s nextPut: $} ]