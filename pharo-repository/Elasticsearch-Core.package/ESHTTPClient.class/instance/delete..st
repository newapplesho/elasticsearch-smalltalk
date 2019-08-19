http-method
delete: aZnUrl 
	^ (self underlyingClientDo: [ :cli | cli delete: aZnUrl url ])