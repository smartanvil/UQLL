as yet unclassified
createNewWithMemoryIndexesOn: aConnection
	^ self new
		initializeWithConnection: aConnection
			indexFactory: UQLLFileLoaderIndexFactory new
			collectionFactory: UQLLCollectionFactory new;
		yourself