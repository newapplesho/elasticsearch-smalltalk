tests-printing
testAsJsonQuery
	| query |
	query := ESMultiMatchQuery new.
	query query:'tuna'.
	query fields: #('title' 'description').
	
	self assert: query asJsonString equals: '{"multi_match":{"fields":["title","description"],"query":"tuna"}}'.