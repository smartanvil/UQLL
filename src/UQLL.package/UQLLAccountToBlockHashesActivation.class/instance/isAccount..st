registry
isAccount: aHash
	aHash ifNil: [ ^ false ].
	aHash size = 42
		ifFalse: [ self breakOnce ].
	^ (FogCachedConnection currentConnection eth getContractCode: aHash asBKHexa blockTag: #latest) isNil