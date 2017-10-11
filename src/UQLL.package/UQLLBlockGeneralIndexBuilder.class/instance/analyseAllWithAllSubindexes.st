source-gathering
analyseAllWithAllSubindexes
	from := 0.
	to := (self connection findBlockByTag: #latest full: true) number.
	self initializeFrom: from to: to.
	indexes add: (UQLLIndexBuilder allSubInstances collect: [ :i | i new ]).
	self analyse