printing
printContentsOn: stream
	super printContentsOn: stream.
	jsonString
		ifNotNil: [ 
			stream space; nextPutAll: 'body: '.
			stream
				space;
				print: jsonString ]