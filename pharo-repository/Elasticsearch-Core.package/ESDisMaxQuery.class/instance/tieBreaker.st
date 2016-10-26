accessing
tieBreaker
	^ self modifiers at: 'tie_breaker' ifAbsentPut: [ 0 ]