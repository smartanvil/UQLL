initialization
ensureMappingOneToOneIndexTable: aName parentIndex: anIndex type: aType toType: anOtherType
	| insert create |
	(self existsIndexTable: aName type: (aType , '=>' , anOtherType) kind: #mapping)
		ifTrue: [ ^ self ].
	create := 'DROP TABLE IF EXISTS {1}; CREATE TABLE {1} ( key {2} REFERENCES {4}(index), value {3}, CONSTRAINT {1}_key_value PRIMARY KEY (key, value) ); '
		format:
			{aName.
			aType.
			anOtherType.
			anIndex name.}.
	insert := 'INSERT INTO uqll_index_registry (name, type, kind) VALUES (''{1}'', ''{2}'', ''{3}'');'
		format:
			{aName.
			(aType , '=>' , anOtherType).
			#mapping}.
	connection execute: create.
	connection execute: insert