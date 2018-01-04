initialization
initialize
	super initialize.
	default := UQLLGeneralEnvironment new.
"	default registerConnection: (UQLLFogConnection on: 'http://localhost:8545')"