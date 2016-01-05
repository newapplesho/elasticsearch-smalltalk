actions
ensureExistence
	self indexExists
		ifFalse: [ self createIndexNamed: self name ]