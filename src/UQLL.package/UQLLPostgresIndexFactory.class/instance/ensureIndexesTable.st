ensure
ensureIndexesTable
	(connection execute: 'SELECT 1 FROM information_schema.tables WHERE table_name =''uqll_index_registry''') isEmpty
		ifTrue: [ connection
				execute:
					'
CREATE TABLE uqll_index_registry(
				name text,
				type text,
				kind text
);' ]