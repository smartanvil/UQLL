accessing
environment: anEnvironment
	environment ifNotNil: [ self error: 'Environment is not dynamically changable' ] ifNil: [ environment := anEnvironment ]