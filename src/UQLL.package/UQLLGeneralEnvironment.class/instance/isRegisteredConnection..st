testing
isRegisteredConnection: aConnection
	^ self privateEnvironmentCollection value 
		anySatisfy: [ :e | e isRegisteredConnection: aConnection ]