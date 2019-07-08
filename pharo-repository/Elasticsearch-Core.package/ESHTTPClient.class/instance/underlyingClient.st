accessing
underlyingClient
	^ client ifNil: [ client := self defaultUnderlyingClientClass new]