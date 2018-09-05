ensure
ensureUniqueIndexTable: aName type: aType
	(self existsIndexTable: aName type: aType kind: #unique)
		ifFalse: [ | insert create |
			create := 'DROP TABLE IF EXISTS {1}; CREATE TABLE {1} ( index {2} PRIMARY KEY ); '
				format:
					{aName.
					aType}.
			insert := 'INSERT INTO uqll_index_registry (name, type, kind) VALUES (''{1}'', ''{2}'', ''{3}'');'
				format:
					{aName.
					aType.
					#unique}.
			connection execute: create.
			connection execute: insert ]