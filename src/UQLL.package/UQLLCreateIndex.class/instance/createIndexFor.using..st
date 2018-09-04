as yet unclassified
createIndexFor: anUQLLCollection using: aGeneralEnvironment
	| installingEnvironment index |
	installingEnvironment := aGeneralEnvironment get: name parent.
	(type isNil or: [ type asUppercase = #BTREE ])
		ifTrue: [ index := self createBTreeIndexOn: anUQLLCollection ].
	type asUppercase = #UNIQUE
		ifTrue: [ index := self createUniqueIndexOn: anUQLLCollection ].
	index
		ifNil:
			[ UQLLError signal: ('Unexpected type: {1}. BTREE or UNIQUE expected' format: {type asString}) ]
		ifNotNil: [ installingEnvironment registerAndInitializeIndex: index ]