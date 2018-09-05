create
createMappingIndexOn: aTargetCollection atMember: aTargetMemberPath pointingToKeysAt: aCollectionOfKeys atMember: aPointingMemberPath named: anIndexName
	| relatedIndex keyType valueType |
	relatedIndex := aCollectionOfKeys uniqueIndex.
	self assert: relatedIndex member = aPointingMemberPath.
	valueType := self indexTypeFor: (aTargetMemberPath value: aTargetCollection first).
	keyType := relatedIndex type.
	self ensureMappingOneToOneIndexTable: anIndexName  parentIndex: relatedIndex type: keyType  toType: valueType.
	^ UQLLMappingIndex new
		name: anIndexName;
		valueType: valueType;
		keyType: relatedIndex type;
		parentCollection: aCollectionOfKeys;
		parentMember: aPointingMemberPath;
		collection: aTargetCollection;
		member: aTargetMemberPath;
		yourself