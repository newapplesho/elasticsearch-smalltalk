testing
indexExistsAt: aUrl
	^ ((self head: aUrl) code) = 200