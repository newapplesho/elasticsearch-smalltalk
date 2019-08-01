tests-printing
testAsJsonQuery
	| query |
	query := ESMultiMatchQuery new.
	query query:'tuna'.
	query fields: #('title' 'description').
	
	self assert: query asJsonString equals: '{"multi_match":{"query":"tuna","fields":["title","description"]}}'.