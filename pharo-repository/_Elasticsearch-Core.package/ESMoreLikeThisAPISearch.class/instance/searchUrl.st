as yet unclassified
searchUrl
	| url |
	url := self index url.
	url
		addToPath: self docType;
		addToPath: self docId asString;
		addToPath: '_mlt'.
	^ url