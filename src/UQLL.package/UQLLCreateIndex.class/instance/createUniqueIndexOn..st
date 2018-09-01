creating
createUniqueIndexOn: anUQLLCollection
	anUQLLCollection hasUniqueIndex
		ifTrue: [ ^ UQLLError signal: 'the collection has already an unique index' ].
	^ (factory uniqueIndex: name asSymbol type: 'text')
		collection: anUQLLCollection;
		member: member;
		yourself