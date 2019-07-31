actions
delete
	self indexExists
		ifTrue: [ self deleteIndexNamed: self name ]