accessing
index
	self
		fetchIndex: UQLLDynamicGlobals value
		ifAbsent: [ | index |
			index := self buildIndex.
			UQLLDynamicGlobals value installIndex: index.
			self saveIndex: index ]