initialization
delete
	self indexExists
		ifTrue: [ self deleteIndexNamed: self name ]