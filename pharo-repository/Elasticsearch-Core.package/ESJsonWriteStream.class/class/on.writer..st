instance creation
on: aStream writer: writer
	^ self new
		stream: aStream;
		writer: writer;
		yourself