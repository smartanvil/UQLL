source-gathering
analyseAll
	from := 0.
	to := (self connection findBlockByTag: #latest full: true) number.
	self initializeFrom: from to: to.
	self analyse