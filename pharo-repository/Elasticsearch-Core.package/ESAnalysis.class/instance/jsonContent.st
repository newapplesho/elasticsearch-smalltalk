json
jsonContent
	| d1 |
	d1 := JsonObject new.
	self hasAnalyzers
		ifTrue: [ d1 at: 'analyzer' put: (self jsonStringFromCollection: self analyzers) ].
	self hasTokenizer
		ifTrue: [ d1 at: 'tokenizer' put: (self jsonStringFromCollection: self tokenizers) ].
	self hasFilter
		ifTrue: [ d1 at: 'filter' put: (self jsonStringFromCollection: self filters) ].
	self hasCharFilter
		ifTrue: [ d1 at: 'char_filter' put: (self jsonStringFromCollection: self charFilters) ].
	^ d1