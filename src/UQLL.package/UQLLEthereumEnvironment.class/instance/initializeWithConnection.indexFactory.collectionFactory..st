initialization
initializeWithConnection: aConnection indexFactory: anIndexFactory collectionFactory: aCollectionFactory
	self assert: connection isNil.
	connection := aConnection.
	self installBuiltinObjectsUsingIndexFactory: anIndexFactory collectionFactory: aCollectionFactory