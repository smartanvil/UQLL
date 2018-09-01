as yet unclassified
createIndexFor: anUQLLCollection 
	(type isNil or: [type asUppercase = #BTREE]) ifTrue: [ ^ self createBTreeIndexOn: anUQLLCollection  ].
	type asUppercase = #UNIQUE ifTrue: [ ^ self createUniqueIndexOn: anUQLLCollection  ].
	
	UQLLError signal: ('Unexpected type: {1}. BTREE or UNIQUE expected' format:{type asString}).
	
	