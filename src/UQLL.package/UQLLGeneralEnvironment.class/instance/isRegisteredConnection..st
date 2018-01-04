testing
isRegisteredConnection: aConnection
	^ self privateEnvironmentCollection
		anySatisfy: [ :e | e isRegisteredConnection: aConnection ]