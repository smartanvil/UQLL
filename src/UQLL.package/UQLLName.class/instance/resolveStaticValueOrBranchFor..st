as yet unclassified
resolveStaticValueOrBranchFor: aFogStreamsContractInstancesCollectionArray
	^ (aFogStreamsContractInstancesCollectionArray source detect: [ :s | self = s key ]) value