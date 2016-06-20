printing
printContentsOn: stream
	super printContentsOn: stream.
	jsonString
		ifNotNil: [ 
			stream space; nextPutAll: 'response: '.
			stream
				space;
				print: jsonString ]