creating
createBTreeIndexOn: anUQLLCollection
	anUQLLCollection hasUniqueIndex
		ifFalse: [ ^ UQLLError signal: 'the collection has not any main unique index!' ].
	^ (factory
		mapping: anUQLLCollection uniqueIndex type
		to: (self indexTypeFor: (member asSymbol value: anUQLLCollection first) class)
		named: name asSymbol)
		collection: anUQLLCollection;
		member: member;
		yourself