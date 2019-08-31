accessing
systemInformation
	^self parseJsonFromString: (self httpClient get: self baseUrl)