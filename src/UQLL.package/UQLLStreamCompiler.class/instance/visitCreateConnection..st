visiting
visitCreateConnection: aUQLLCreateScheme
	| message connection |
	connection := aUQLLCreateScheme scheme.
	message := (UQLLRunningEnvironmentHolder value isRegisteredScheme: connection)
		ifFalse: [ 'new connection created' ]
		ifTrue: [ 'connection modified' ].
	UQLLRunningEnvironmentHolder value registerScheme: connection.
	^ {message} readStream