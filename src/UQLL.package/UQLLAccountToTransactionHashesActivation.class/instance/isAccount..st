testing
isAccount: aHash
	aHash ifNil: [ ^ false ].
	aHash size = 42
		ifFalse: [ self breakOnce ].
	^ (FogConnection createDefaultConnection eth
		getContractCode: aHash asBKHexa
		blockTag: #latest) isNil