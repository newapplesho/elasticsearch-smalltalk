tests-printing
testAsJsonString
	| fuzzyLikeThisQuery |
	fuzzyLikeThisQuery := ESFuzzyLikeThisQuery new.
	fuzzyLikeThisQuery query:'tuna'.
	fuzzyLikeThisQuery fields: #('title' 'description').
	
	self assert: fuzzyLikeThisQuery asJsonString equals: '{"fuzzy_like_this":{"like_text":"tuna","fields":["title","description"]}}'.