json
addOrderTo: aDictionary
	self hasOrder
		ifTrue: [ 
			aDictionary
				at: 'order'
				put:
					(self ascending
						ifTrue: [ 'asc' ]
						ifFalse: [ 'desc' ]) ]