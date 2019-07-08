http-method
head: aUrl
	^ self underlyingClientDo: [ :cli | cli head: aUrl url ]