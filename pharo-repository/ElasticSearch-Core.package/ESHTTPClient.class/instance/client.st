accessing
client
	^ client ifNil: [ client := self defaultClient new ]