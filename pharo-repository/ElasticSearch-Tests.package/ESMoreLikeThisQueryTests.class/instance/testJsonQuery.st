tests-actions
testJsonQuery
	| index search  result fuzzyLikeThisQuery |
	index := ESIndex indexNamed: 'sushi_store'. 
	index type:'store'.
	search := ESSearch new index: index.
	fuzzyLikeThisQuery := ESMoreLikeThisQuery new.
	fuzzyLikeThisQuery query:'tuna'.
	fuzzyLikeThisQuery fields: #('title' 'description').
	search addQuery: fuzzyLikeThisQuery.
	result := search jsonQuery.
	
	self assert: result equals: '{"query": {"more_like_this":{"fields":["title","description"],"like_text":"tuna"}}}'.