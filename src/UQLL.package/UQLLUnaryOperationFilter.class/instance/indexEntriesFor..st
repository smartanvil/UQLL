indexing
indexEntriesFor: aFogStreamsContractInstancesCollection
	self assert: aFogStreamsContractInstancesCollection size = 1.
	^ aFogStreamsContractInstancesCollection first value all minus: (right indexEntriesFor: aFogStreamsContractInstancesCollection)