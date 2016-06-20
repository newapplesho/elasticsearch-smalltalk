instance creation
fromJson: aJsonObject 
	|newDocument|
	newDocument :=self new.
	newDocument id: (aJsonObject at:'_id');
	type: (aJsonObject at:'_type');
	version: (aJsonObject at:'_version');
	content:(aJsonObject at:'_source') .
	^newDocument 