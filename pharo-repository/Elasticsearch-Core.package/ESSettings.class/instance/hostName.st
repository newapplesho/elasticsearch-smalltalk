accessing
hostName
	^ self at: #hostName ifAbsentPut: [ 'localhost' ]