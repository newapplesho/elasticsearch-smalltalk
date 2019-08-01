tests-printing
testAsJsonString
	| fuzzyLikeThisQuery |
	fuzzyLikeThisQuery := ESMoreLikeThisQuery new.
	fuzzyLikeThisQuery query:'tuna'.
	fuzzyLikeThisQuery fields: #('title' 'description').
	
	self assert: fuzzyLikeThisQuery asJsonString equals: '{"more_like_this":{"fields":["title","description"],"like_text":"tuna"}}'.