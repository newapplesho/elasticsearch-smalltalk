accessing
aggregationName
	^ aggregationName ifNil:[ aggregationName := self type,'_', self field ].