accessing
baseUrl
	^ self url
		host: self hostName;
		port: self port;
		yourself