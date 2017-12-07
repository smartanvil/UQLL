initialization
installBuiltinCollections
	| contractNameSpace brief |
	contractNameSpace := Dictionary new.
	contractNameSpace at: #instances put: (UQLLContractInstancesCollection onConnection: connection).
	contractNameSpace
		at: #descriptions
		put:
			((UQLLContractCollection onConnection: connection)
				directory: FileLocator contractsFolder;
				yourself).
	contractNameSpace at: #activations put: (UQLLContractInstancesCollection onConnection: connection).
	namedCollections at: #contract put: contractNameSpace.
	namedCollections at: #blocks put: (UQLLBlocksCollection onConnection: connection).
	namedCollections at: #accounts put: (UQLLAccountsCollection onConnection: connection).
	namedCollections at: #transactions put: (UQLLTransactionsCollection onConnection: connection).
	namedCollections at: #connections put: connections.
	namedCollections at: #indexes put: indexTags .
	brief := namedCollections associations
		inject: OrderedCollection new
		into: [ :col :each | 
			each value isDictionary
				ifTrue: [ col addAll: (each value keys collect: [ :k | (each key , '.' , k) asSymbol ]) ]
				ifFalse: [ col add: each key ].
			col ].
	namedCollections at: #Collections put: brief