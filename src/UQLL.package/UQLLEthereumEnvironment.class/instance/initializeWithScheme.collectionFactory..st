initialization
initializeWithScheme: aScheme collectionFactory: aCollectionFactory
	self assert: scheme isNil.
	scheme := aScheme.
	self installBuiltinCollections: aCollectionFactory