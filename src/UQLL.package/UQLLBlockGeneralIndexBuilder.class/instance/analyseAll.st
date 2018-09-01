source-gathering
analyseAll
	from := 0.
	to := (self session findBlockByTag: #latest full: true) number.
	self initializeFrom: from to: to.
	self analyse