private
underlyingClientDo: aBlock
	| cli |
	cli := self underlyingClient.
	cli accept: 'application/json'.
	cli contentWriter: [:o | (ZnEntity with: o) contentType: 'application/json'].
	aBlock value: cli.
	^cli response