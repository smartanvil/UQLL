create
uniqueIndex: aName type: aType
	self ensureUniqueIndexTable: aName type: aType.
	^ UQLLUniqueIndex new
		name: aName;
		type: aType;
		yourself