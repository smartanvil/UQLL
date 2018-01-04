accessing
functions
	^ functions ifNil: [ functions := UQLLEnvironmentFunctions new ]