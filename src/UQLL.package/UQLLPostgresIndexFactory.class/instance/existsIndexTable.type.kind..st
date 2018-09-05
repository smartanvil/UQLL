ensure
existsIndexTable: aName type: aType kind: aKind
	| select |
	self ensureIndexesTable.
	select := 'SELECT 1 FROM uqll_index_registry WHERE name =''{1}'' AND type =''{2}'' AND kind =''{3}'''
		format:
			{aName.
			aType.
			aKind}.
	^ (connection execute: select) isEmpty not