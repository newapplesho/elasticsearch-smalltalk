tests-converting
testJsonQuery
	| index search query result  sortByScore sortByTitle |
	index := ESIndex indexNamed: 'sushi_store'. 
	index type:'sushi'.
	search := ESSearch new index: index.
	query := ESMatchQuery new.
	query query:'Tuna'.
	search query: query.
	sortByScore := ESSortCriteria new field: '_score'; sortDescending; yourself.
	sortByTitle := ESSortCriteria new field: 'title'; sortDescending; yourself.
	search addSortCriteria: sortByScore.
	search addSortCriteria: sortByTitle.
	result := search jsonQuery.
	
	self assert: result equals: '{"sort":[{"_score":{"order":"desc"}},{"title":{"order":"desc"}}],"query":{"match":{"_all":"Tuna"}}}'.