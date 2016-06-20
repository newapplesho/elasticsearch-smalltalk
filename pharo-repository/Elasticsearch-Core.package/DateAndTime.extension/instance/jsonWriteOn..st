*Elasticsearch-Core
jsonWriteOn: aStream
	aStream nextPut: $".
	self printOn: aStream.
	aStream nextPut: $"