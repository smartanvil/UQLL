clone
forConnection: aConnection atEnvironment: anEnvironment
self halt.
	^ self clone
		connection: aConnection;
		environment: anEnvironment;
		yourself