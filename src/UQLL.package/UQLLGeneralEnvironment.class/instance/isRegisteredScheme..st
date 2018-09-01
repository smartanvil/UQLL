testing
isRegisteredScheme: aConnection
	^ self privateEnvironmentCollection value 
		anySatisfy: [ :e | e isRegisteredScheme: aConnection ]