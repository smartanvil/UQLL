initialization
testCanAccessBuiltInCollectionsGeneralEnvironment
	self assert: (environment exists: #environments asScopePath).
	self assert: (environment exists: #collections asScopePath).
	self deny: (environment exists: #randomName asScopePath).
	self assert: (environment get: #environments asScopePath) size equals: 0.
	self assert: (environment get: #collections asScopePath) value size equals: 0