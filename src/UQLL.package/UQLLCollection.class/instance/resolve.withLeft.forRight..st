resolveingIds
resolve: aBinaryComparition withLeft: aConstantValue forRight: aDataAccessor
	^ (self hasIndexFor: aDataAccessor)
		ifTrue: [ (self indexOn: aDataAccessor)
				resolve: aBinaryComparition
				withLeft: aConstantValue ]
		ifFalse: [ self all ]