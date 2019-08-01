factory
newUnderlyingClient
	| cli |
	cli := super newUnderlyingClient.
	cli enforceHttpSuccess: true.
	^cli