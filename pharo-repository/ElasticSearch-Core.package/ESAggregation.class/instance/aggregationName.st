accessing
aggregationName
	^ aggregationName ifNil:[ aggregationName := self type ].