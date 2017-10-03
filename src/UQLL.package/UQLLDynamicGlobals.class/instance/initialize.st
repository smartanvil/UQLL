initialization
initialize
	super initialize.
	connection := UQLLFogConnection on: 'http://localhost:8545'.
	default := UQLLEnvironment new. 