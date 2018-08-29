as yet unclassified
createNewWithPGIndexesOn: aConnection
	^ self new
		initializeWithConnection: aConnection
			indexFactory: UQLLPostgresIndexFactory new
			collectionFactory: UQLLCollectionFactory new;
		yourself