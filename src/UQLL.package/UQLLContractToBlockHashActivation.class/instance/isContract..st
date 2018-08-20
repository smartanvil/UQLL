testing
isContract: aHash
	aHash ifNil: [ ^ false ].

	^ (FogConnection createDefaultConnection eth
		getContractCode: aHash asBKHexa
		blockTag: #latest) isNotNil