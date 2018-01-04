initialization
setUp
	super setUp.
	UQLLRunningEnvironmentHolder
		value:
			(UQLLGeneralEnvironment new
				registerConnection: (UQLLFogConnection new name: #ethereum);
				yourself)
		during: [ stream := (self stream: self studyCase) first ]