as yet unclassified
createNewWithMemoryIndexesOn: aScheme
	^ self new
		initializeWithScheme: aScheme
			indexFactory: UQLLFileLoaderIndexFactory new
			collectionFactory: UQLLCollectionFactory new;
		yourself