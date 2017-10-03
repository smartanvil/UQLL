initialization
installBuiltinBuffers
	| contractNameSpace brief |
	contractNameSpace := Dictionary new.
	contractNameSpace at: #instances put: (UQLLContractInstancesBuffer onConnection: connection).
	contractNameSpace
		at: #descriptions
		put:
			((UQLLContractBuffer onConnection: connection)
				directory: FileLocator contractsFolder;
				yourself).
	contractNameSpace at: #activations put: (UQLLContractInstancesBuffer onConnection: connection).
	namedbuffers at: #contract put: contractNameSpace.
	namedbuffers at: #blocks put: (UQLLBlocksBuffer onConnection: connection).
	namedbuffers at: #accounts put: (UQLLAccountsBuffer onConnection: connection).
	namedbuffers at: #transactions put: (UQLLTransactionsBuffer onConnection: connection).
	namedbuffers at: #connections put: connections.
	namedbuffers at: #indexes put: indexTags .
	brief := namedbuffers associations
		inject: OrderedCollection new
		into: [ :col :each | 
			each value isDictionary
				ifTrue: [ col addAll: (each value keys collect: [ :k | (each key , '.' , k) asSymbol ]) ]
				ifFalse: [ col add: each key ].
			col ].
	namedbuffers at: #buffers put: brief