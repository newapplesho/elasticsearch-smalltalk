initialize-release
initialize
	super initialize.
	analyzers := Set new.
	tokenizers := Set new.
	filters := Set new.
	charFilters := Set new