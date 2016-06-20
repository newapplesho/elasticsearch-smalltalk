urls
urlToGetDocument: anESDocument
	^ self baseUrl
		addToPath: self name;
		addToPath: anESDocument type;
		addToPath: anESDocument id