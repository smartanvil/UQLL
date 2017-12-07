as yet unclassified
resolve: aBranch for: aFogStreamsContractInstancesCollectionArray
	^ (aBranch isFogName or: [ aBranch isEQLMethod ])
		ifTrue: [ aBranch resolveStaticValueOrBranchFor: aFogStreamsContractInstancesCollectionArray ]
		ifFalse: [ aBranch ]