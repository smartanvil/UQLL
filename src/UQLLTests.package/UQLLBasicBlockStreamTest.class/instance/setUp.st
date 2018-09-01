initialization
setUp
	super setUp.
	self timeLimit: 5 minute.
	UQLLRunningEnvironmentHolder
		value:
			(UQLLGeneralEnvironment new
				registerScheme: (UQLLFogScheme new name: #eth);
				yourself)
		during: [ stream := (self stream: self studyCase) first ]