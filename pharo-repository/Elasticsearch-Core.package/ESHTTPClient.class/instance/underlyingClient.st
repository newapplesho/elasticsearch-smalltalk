accessing
underlyingClient
	^ underlyingClient ifNil: [ underlyingClient := self newUnderlyingClient]