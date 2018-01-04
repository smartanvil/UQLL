initialization
initializeWithConnection: aConnection
	self assert: connection isNil.
	connection := aConnection.
	self installBuiltinObjects