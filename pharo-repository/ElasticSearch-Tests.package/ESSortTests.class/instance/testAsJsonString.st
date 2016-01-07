tests-printing
testAsJsonString
	| index search query result  sortByScore sortByTitle |
	index := ESIndex indexNamed: 'sushi_store'. 
	index type:'store'.
	search := ESSearch new index: index.
	query := ESMatchQuery new.
	query query:'Tuna'.
	search addQuery: query.
	sortByScore := ESSortCriteria new fieldName: '_score'; sortDescending; yourself.
	sortByTitle := ESSortCriteria new fieldName: 'title'; sortDescending; yourself.
	search addSortCriteria: sortByScore.
	search addSortCriteria: sortByTitle.
	result := search jsonQuery.
	
	self assert: result equals: '{"query": {"match":{"_all":"Tuna"}}, "sort":[{"_score":{"order":"desc"}}, {"title":{"order":"desc"}}]}'.