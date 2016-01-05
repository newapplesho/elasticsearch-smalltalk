sorting
sortByScore
	self
		addSortCriteria:
			(ESSortCriteria new
				fieldName: '_score';
				sortDescending;
				yourself)