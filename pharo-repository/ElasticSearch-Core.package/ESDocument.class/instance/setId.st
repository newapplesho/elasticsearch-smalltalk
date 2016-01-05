ids
setId
	id := self setIdInClient
		ifTrue: [ self newId ]
		ifFalse: [ String new ]