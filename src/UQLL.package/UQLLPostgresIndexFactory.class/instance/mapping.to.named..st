initialization
mapping: aType to: anOtherType named: aName
	self ensureMappingIndexTable: aName type: aType toType: anOtherType .
	^ UQLLMappingIndex new
		name: aName;
		valueType: aType;
		keyType: anOtherType;
		yourself