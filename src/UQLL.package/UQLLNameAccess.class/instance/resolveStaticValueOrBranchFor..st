accessing
resolveStaticValueOrBranchFor: aFogStreamsContractInstancesCollectionArray
	^ (aFogStreamsContractInstancesCollectionArray source detect: [ :s | value  = s key ]) value