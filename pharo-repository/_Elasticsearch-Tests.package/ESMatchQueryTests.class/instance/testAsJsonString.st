tests-printing
testAsJsonString
	| q |
	q := ESMatchQuery new.
	q query: 'Tuna'.
	self assert: q asJsonString equals: '{"match":{"_all":"Tuna"}}'