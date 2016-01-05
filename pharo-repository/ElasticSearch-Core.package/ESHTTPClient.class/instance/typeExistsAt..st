testing
typeExistsAt: aUrl
	^ (self client headResponseStatusFor: aUrl url) = 200