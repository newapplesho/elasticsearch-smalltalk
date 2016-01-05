url creation
searchUrlWithParams: paramsDict
	| indexUrl |
	indexUrl := self index searchUrl.
	paramsDict keysAndValuesDo: [:key :value |
		key ifNotNil: [indexUrl queryAt: key put: value ]
	].
	^indexUrl