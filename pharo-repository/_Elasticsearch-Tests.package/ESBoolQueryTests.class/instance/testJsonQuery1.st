tests-printing
testJsonQuery1
	| index search result sortByScore sortByTitle query1 query2 booleQuery |
	index := ESIndex indexNamed: 'sushi_store'.
	index type: 'sushi'.
	search := ESSearch new index: index.
	query1 := ESMatchQuery new matchPhrase.
	query1 query: 'Tuna'.
	query2 := ESMatchQuery new.
	query2 query: 'Tuna'.
	booleQuery := ESBoolQuery new.
	booleQuery
		should:
			{query1.
			query2}.
	booleQuery minimum_should_match: 1.
	search query: booleQuery.
	sortByScore := ESSortCriteria new
		field: '_score';
		sortDescending;
		yourself.
	sortByTitle := ESSortCriteria new
		field: 'title';
		sortDescending;
		yourself.
	search addSortCriteria: sortByScore.
	search addSortCriteria: sortByTitle.
	result := search jsonQuery.
	self
		assert: result
		equals:
			'{"sort":[{"_score":{"order":"desc"}},{"title":{"order":"desc"}}],"query":{"bool":{"should":[{"match":{"_all":{"type":"phrase","query":"Tuna"}}},{"match":{"_all":"Tuna"}}],"minimum_should_match":1}}}'