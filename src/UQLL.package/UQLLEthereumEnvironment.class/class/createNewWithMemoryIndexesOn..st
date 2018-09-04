as yet unclassified
createNewWithMemoryIndexesOn: aScheme
	^ self new
		initializeWithScheme: aScheme collectionFactory: UQLLCollectionFactory new;
		yourself