tests-converting
testJsonQuery
	| index search  result fuzzyLikeThisQuery |
	index := ESIndex indexNamed: 'sushi_store'. 
	index type:'sushi'.
	search := ESSearch new index: index.
	fuzzyLikeThisQuery := ESFuzzyLikeThisQuery new.
	fuzzyLikeThisQuery query:'tuna'.
	fuzzyLikeThisQuery fields: #('title' 'description').
	search query: fuzzyLikeThisQuery.
	result := search jsonQuery.
	
	self assert: result equals: '{"query":{"fuzzy_like_this":{"fields":["title","description"],"like_text":"tuna"}}}'.