as yet unclassified
resolve: aBranch for: aFogStreamsContractInstancesCollectionArray
	^ (aBranch isScopePath or: [ aBranch isEQLMethod ])
		ifTrue: [ aBranch resolveStaticValueOrBranchFor: aFogStreamsContractInstancesCollectionArray ]
		ifFalse: [ aBranch ]