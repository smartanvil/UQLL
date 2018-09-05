ensure
ensureMappingIndexTable: aName type: aType toType: anOtherType 
	(self existsIndexTable: aName type: (aType,'=>',anOtherType) kind: #mapping)
		ifFalse: [ | insert create index |
			create := 'DROP TABLE IF EXISTS {1}; CREATE TABLE {1} ( key {2}, value {3} ); '
				format:
					{aName.
					aType. anOtherType}.
			index := 'CREATE INDEX ON {1} USING btree (key);'
				format:
					{aName.
					aType}.
			insert := 'INSERT INTO uqll_index_registry (name, type, kind) VALUES (''{1}'', ''{2}'', ''{3}'');'
				format:
					{aName.
					(aType,'=>',anOtherType).
					#mapping}.
			connection execute: create.
			connection execute: index.
			connection execute: insert ]