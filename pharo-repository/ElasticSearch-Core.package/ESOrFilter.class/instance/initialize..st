initialization
initialize: n
	super initialize: n.
	filterList := OrderedCollection  new.
	self at: self filterType put: filterList