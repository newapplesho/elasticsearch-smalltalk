accessing
initialize
	super initialize.
	created := DateAndTime now.
	self updateModifiedTime.
	content := JsonObject new