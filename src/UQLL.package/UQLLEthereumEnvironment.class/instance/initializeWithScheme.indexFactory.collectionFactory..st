initialization
initializeWithScheme: aScheme indexFactory: anIndexFactory collectionFactory: aCollectionFactory
	self assert: scheme isNil.
	scheme := aScheme.
	self
		installBuiltinObjectsUsingIndexFactory: anIndexFactory
		collectionFactory: aCollectionFactory