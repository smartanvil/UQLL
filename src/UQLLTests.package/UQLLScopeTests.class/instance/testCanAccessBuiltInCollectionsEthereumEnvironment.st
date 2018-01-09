initialization
testCanAccessBuiltInCollectionsEthereumEnvironment
	| ethereum |
	ethereum := UQLLFogConnection new environment.
	self assert: (ethereum exists: #collections asScopePath).
	self assert: (ethereum get: #collections asScopePath) size equals: 5.
	self assert: ((ethereum get: #collections asScopePath) allSatisfy: #isSymbol).
	self assert: (ethereum get: #indexes asScopePath) size equals: 16.
	self assert: ((ethereum get: #indexes asScopePath) allSatisfy: #isSymbol).
	self assert: ((ethereum get: #collections asScopePath) collect: [ :n | ethereum getCollectionNamed: n asScopePath ]) size equals: 5.
	self assert: ((ethereum exists: #contract asScopePath / #instances )) .
	self assert: ((ethereum exists: #contract asScopePath / #activations )) .
	self assert: ((ethereum exists: #contract asScopePath / #descriptions )) .
	self deny: (environment exists: #randomName asScopePath)