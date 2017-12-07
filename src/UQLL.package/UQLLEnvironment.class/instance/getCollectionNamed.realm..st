as yet unclassified
getCollectionNamed: aString realm: aFogConnection 
	^ namedCollections at: aString ifAbsent: [ Error signal: ' Collection  ', aString, ' does not exist ' ].