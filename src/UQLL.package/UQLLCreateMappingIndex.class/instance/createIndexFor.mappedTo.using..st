creating
createIndexFor: aTargetedCollection mappedTo: aCollectionHoldingUniqueIndex using: anUQLLEnvironment
	aCollectionHoldingUniqueIndex hasUniqueIndex
		ifFalse: [ ^ UQLLError
				signal:
					('the target collection {1} has not any main unique index!'
						format: {aCollectionHoldingUniqueIndex collectionName asSymbol}) ].
	^ factory
		createMappingIndexOn: aTargetedCollection
		atMember: targetedCollectionMember
		pointingToKeysAt: aCollectionHoldingUniqueIndex
		atMember: mappedCollectionMember
		named: name basename