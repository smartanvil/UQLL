initialization
testCanAccessBuiltInCollectionsEthereumEnvironment
	| ethereum |
	ethereum := UQLLFogConnection new environment.
	self assert: (ethereum exists: #collections asScopePath).
	self assert: (ethereum get: #collections asScopePath) value size equals: 4.
	self assert: ((ethereum get: #collections asScopePath) value allSatisfy: #isSymbol).
	self assert: (ethereum get: #indexes asScopePath) value size equals: 16.
	self assert: ((ethereum get: #indexes asScopePath) value allSatisfy: #isSymbol).
	self
		assert:
			((ethereum get: #collections asScopePath) value
				collect: [ :n | ethereum getCollectionNamed: n asScopePath ]) size
		equals: 4.
	self assert: (ethereum exists: #contract asScopePath / #instances).
	self assert: (ethereum exists: #contract asScopePath / #activations).
	self assert: (ethereum exists: #contract asScopePath / #descriptions).
	self deny: (environment exists: #randomName asScopePath)