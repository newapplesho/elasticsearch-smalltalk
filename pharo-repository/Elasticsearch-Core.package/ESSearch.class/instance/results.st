accessing
results
	^ results ifNil: [ results := Array new: self numberOfResultsInIndex ]