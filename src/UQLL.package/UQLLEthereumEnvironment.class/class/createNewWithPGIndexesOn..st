as yet unclassified
createNewWithPGIndexesOn: aScheme
	^ self new
		initializeWithScheme: aScheme collectionFactory: UQLLCollectionFactory new;
		yourself