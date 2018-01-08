initialization
setUp
	super setUp.
	UQLLRunningEnvironmentHolder
		value:
			(UQLLGeneralEnvironment new
				registerConnection: (UQLLFogConnection new name: #eth);
				yourself)
		during: [ stream := (self stream: self studyCase) first ]