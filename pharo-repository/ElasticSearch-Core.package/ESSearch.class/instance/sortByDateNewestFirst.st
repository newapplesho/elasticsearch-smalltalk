sorting
sortByDateNewestFirst
	self
		addSortCriteria:
			(ESSortCriteria new
				fieldName: 'date';
				sortDescending;
				yourself)