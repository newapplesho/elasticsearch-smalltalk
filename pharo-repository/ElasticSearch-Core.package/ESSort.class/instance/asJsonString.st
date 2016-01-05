as yet unclassified
asJsonString
	"	| d1 |
	d1 := Dictionary new.
	d1 at: 'sort' put: self criteria."

	"^ ('sort' -> (self criteria collect: [ :each | each asJsonString])) asJsonString"
	
	^ String
		streamContents: [ :s | 
			s nextPutAll:'"sort"'.
			s nextPut: $:.
			s nextPut: $[.
			self criteria
				doWithIndex: [ :eachQuery :idx | 
					s nextPutAll: eachQuery asJsonString.
					idx = self criteria size
						ifFalse: [ s nextPutAll: ', ' ] ].
			s nextPut: $]. ]