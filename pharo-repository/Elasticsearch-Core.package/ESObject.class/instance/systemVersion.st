accessing
systemVersion
	^self systemInformation at: 'version' ifAbsent: [ ]