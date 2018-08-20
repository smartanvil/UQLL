source-gathering
analyseAllWithAllSubindexes
	from := 0.
	to := (self connection findBlockByTag: #latest full: true) number.
	self initializeFrom: from to: to.
	indexes
		addAll:
			(UQLLIndexBuilder allSubclasses
				collect: [ :i | 
					i
						new;
						initializeWith: indexProvider;
						yourself ]).
	self analyse