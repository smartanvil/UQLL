visiting
visitCreateConnection: aUQLLCreateConnection
	| conn message |
	[ conn := UQLLDynamicGlobals value connections
		detect: [ :c | c name = aUQLLCreateConnection connection name ]
		ifNone: [ aUQLLCreateConnection connection ].
	message := conn == aUQLLCreateConnection connection
		ifTrue: [ 'new connection created' ]
		ifFalse: [ 'connection modified' ].
	UQLLDynamicGlobals value connections remove: conn ifAbsent: [  ].
	UQLLDynamicGlobals value addConnection: conn ]
		on: Error
		do: [ :e | message := e messageText ].
	^ {message} readStream