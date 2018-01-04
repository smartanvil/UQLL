as yet unclassified
getCollectionNamed: aName
	| col |
	col := self get: aName asScopePath.
	self assert: col isUQLLCollection.
	^ col