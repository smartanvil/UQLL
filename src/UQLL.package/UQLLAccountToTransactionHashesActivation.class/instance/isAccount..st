testing
isAccount: aHash
	aHash ifNil: [ ^ false ].

	^ (FogConnection createDefaultConnection eth
		getContractCode: aHash asBKHexa
		blockTag: #latest) isNil