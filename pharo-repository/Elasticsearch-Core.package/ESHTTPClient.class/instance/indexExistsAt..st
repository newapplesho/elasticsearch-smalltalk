testing
indexExistsAt: aUrl
	^ (self client headResponseStatusFor: aUrl url) = 200