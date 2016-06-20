tests-converting
testJsonQuery
	| index search  result fuzzyLikeThisQuery |
	index := ESIndex indexNamed: 'sushi_store'. 
	index type:'sushi'.
	search := ESSearch new index: index.
	fuzzyLikeThisQuery := ESMoreLikeThisQuery new.
	fuzzyLikeThisQuery query:'tuna'.
	fuzzyLikeThisQuery fields: #('title' 'description').
	search addQuery: fuzzyLikeThisQuery.
	result := search jsonQuery.
	
	self assert: result equals: '{"query":{"more_like_this":{"like_text":"tuna","fields":["title","description"]}}}'.