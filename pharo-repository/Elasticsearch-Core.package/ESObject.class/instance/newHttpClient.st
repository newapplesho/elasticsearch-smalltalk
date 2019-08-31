factory
newHttpClient
	self settings ifNil: [ ^ ESHTTPClient httpClient ].
	
	^ (Smalltalk at: self settings httpClientClassName asSymbol) new
		hostName: self settings hostName;
		port: self settings port;
		yourself