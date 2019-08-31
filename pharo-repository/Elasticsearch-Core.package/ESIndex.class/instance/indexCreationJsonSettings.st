accessing
indexCreationJsonSettings
	| d1 |
	d1 := Dictionary new.
	d1 at: 'settings' put: self settingsJsonContent.
	self mapping ifNotNil: [:m | d1 at: 'mappings' put: m jsonContent].
	^ d1 