visiting
visitCreateConnection: aUQLLCreateConnection
	| message connection |
	connection := aUQLLCreateConnection connection.
	
	message := (UQLLRunningEnvironmentHolder value isRegisteredConnection: connection)
		ifFalse: [ 'new connection created' ]
		ifTrue: [ 'connection modified' ].
	UQLLRunningEnvironmentHolder value registerConnection: connection.
	^ {message} readStream