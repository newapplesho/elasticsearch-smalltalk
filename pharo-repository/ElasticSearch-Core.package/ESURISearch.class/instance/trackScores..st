parameters
trackScores: anObject
	"When sorting, set to true in order to still track scores and return them as part of each hit."

	self uriParameters at: 'track_scores' put: anObject