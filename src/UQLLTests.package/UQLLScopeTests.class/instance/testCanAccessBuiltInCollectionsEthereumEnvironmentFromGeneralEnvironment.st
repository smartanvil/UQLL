initialization
testCanAccessBuiltInCollectionsEthereumEnvironmentFromGeneralEnvironment
	| connection ether |
	connection := UQLLFogConnection new
		name: #ether;
		yourself.
	environment registerConnection: connection.
	ether := #ether asScopePath.
	self assert: (environment exists: ether / #collections).
	self assert: (environment get: ether / #collections) size equals: 4.
	self assert: ((environment get: ether / #collections) allSatisfy: #isSymbol).
	self assert: (environment get: ether / #indexes) size equals: 16.
	self assert: ((environment get: ether / #indexes) allSatisfy: #isSymbol).
	self assert: ((environment get: ether / #collections) collect: [ :n | environment getCollectionNamed: ether / n ]) size equals: 4.
	self assert: ((environment get: ether / #indexes) collect: [ :n | environment get: ether / n ensure: #isUQLLIndex ]) size equals: 16.
	self assert: (environment exists: ether / #contract / #instances).
	self assert: (environment exists: ether / #contract / #activations).
	self assert: (environment exists: ether / #contract / #descriptions).
	self deny: (environment exists: ether / #randomName)