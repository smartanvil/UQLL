accessing
indexEntriesFor: aFogStreamsContractInstancesCollection
	| leftValue rightValue |
	leftValue := self resolve: left for: aFogStreamsContractInstancesCollection.
	rightValue := self resolve: right for: aFogStreamsContractInstancesCollection.
	(leftValue isDatasource and: [ rightValue isDatasource not ])
		ifTrue: [ ^ leftValue resolve: operationSymbol forLeft: left withRight: rightValue ].
	(leftValue isDatasource not and: [ rightValue isDatasource ])
		ifTrue: [ ^ rightValue resolve: self operation withLeft: leftValue forRight: right ].
	^ leftValue mergeBy: self operation withRight: rightValue