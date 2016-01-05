private
updateJson
	self at: self filterType  put: ( JsonObject new at: self field put: (from addAll: to ; yourself); yourself).