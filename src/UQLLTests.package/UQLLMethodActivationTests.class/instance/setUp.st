initialization
setUp
	super setUp.
	UQLLRunningEnvironmentHolder
		value:
			(UQLLGeneralEnvironment new
				registerScheme: (UQLLFogScheme new name: #eth);
				yourself)
		during: [ 
			ast := self semanticTree: self studyCase.
			stream := (self stream: self studyCase) first ]