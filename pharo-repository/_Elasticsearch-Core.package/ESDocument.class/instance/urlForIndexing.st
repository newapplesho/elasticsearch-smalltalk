urls
urlForIndexing
	^ self baseUrl
		addToPath: self index name;
		addToPath: self type;
		addToPath: self id