json
jsonStringFrom: data
	^ data isString ifTrue: [ data ] ifFalse: [ NeoJSONWriter toString: data ]