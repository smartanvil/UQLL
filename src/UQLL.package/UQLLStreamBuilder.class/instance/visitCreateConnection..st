visiting
visitCreateConnection: aUQLLCreateConnection
	| conn message |
	[ conn := UQLLRunningEnvironmentHolder value connections
		detect: [ :c | c name = aUQLLCreateConnection connection name ]
		ifNone: [ aUQLLCreateConnection connection ].
	message := conn == aUQLLCreateConnection connection
		ifTrue: [ 'new connection created' ]
		ifFalse: [ 'connection modified' ].
	UQLLRunningEnvironmentHolder value connections remove: conn ifAbsent: [  ].
	UQLLRunningEnvironmentHolder value addConnection: conn ]
		on: Error
		do: [ :e | message := e messageText ].
	^ {message} readStream