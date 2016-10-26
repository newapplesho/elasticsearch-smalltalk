printing
jsonStringContents
	^ String streamContents: [:str | self jsonWriteOn: str]