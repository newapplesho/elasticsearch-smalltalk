converting
jsonStringFrom: data
	^ data isString ifTrue: [ data ] ifFalse: [ STONJSON toString: data ]