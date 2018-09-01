initialization
testCanAccessBuiltInCollectionsEthereumEnvironmentFromGeneralEnvironment
	| connection ether |
	connection := UQLLFogScheme new
		name: #ether;
		yourself.
	environment registerScheme: connection.
	ether := #ether asScopePath.
	self assert: (environment exists: ether / #collections) value.
	self assert: (environment get: ether / #collections) value size equals: 4.
	self assert: ((environment get: ether / #collections) value allSatisfy: #isSymbol).
	self assert: (environment get: ether / #indexes) value size equals: 15.
	self assert: ((environment get: ether / #indexes) value allSatisfy: #isSymbol).
	self
		assert:
			((environment get: ether / #collections) value
				collect: [ :n | environment getCollectionNamed: ether / n ]) size
		equals: 4.
	self
		assert:
			((environment get: ether / #indexes) value
				collect: [ :n | environment get: ether / n ensure: #isUQLLIndex ]) size
		equals: 15.
	self assert: (environment exists: ether / #contract / #instances).
	self assert: (environment exists: ether / #contract / #activations).
	self assert: (environment exists: ether / #contract / #descriptions).
	self deny: (environment exists: ether / #randomName)