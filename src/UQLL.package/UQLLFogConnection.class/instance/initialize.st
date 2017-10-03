initialization
initialize
	super initialize.
	environment := UQLLEnvironment new.
	environment connection: self