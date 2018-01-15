initialization
setUp
	super setUp.
	UQLLRunningEnvironmentHolder
		value:
			(UQLLGeneralEnvironment new
				installCollection: (1 to: 20) as: #Numbers1to20;
				installCollection: (10 to: 30) as: #Numbers10to30;
				yourself)
		during: [ ast := self semanticTree: self studyCase.
			stream := (self stream: self studyCase) first ]