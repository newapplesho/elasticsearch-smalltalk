printing
jsonWriteOn: aStream
	self aggregations do: [ :v | v jsonWriteOn: aStream ] separatedBy: [ aStream nextPut: $, ]