as yet unclassified
createNewWithPGIndexesOn: aScheme
	^ self new
		initializeWithScheme: aScheme
			indexFactory: UQLLPostgresIndexFactory new
			collectionFactory: UQLLCollectionFactory new;
		yourself