visit create index
visitCreateMappedIndexStatement: anUQLCreateMappedIndexStatementNode
	^ UQLLCreateMappingIndex new
		factory: UQLLPostgresIndexFactory new;
		type: (anUQLCreateMappedIndexStatementNode type acceptVisitor: self);
		name: (anUQLCreateMappedIndexStatementNode name acceptVisitor: self);
		targetedCollection: (anUQLCreateMappedIndexStatementNode targetedCollection acceptVisitor: self);
		targetedCollectionMember: (anUQLCreateMappedIndexStatementNode targetedMember acceptVisitor: self);
		mappedCollection: (anUQLCreateMappedIndexStatementNode mappedCollection acceptVisitor: self);
		mappedCollectionMember: (anUQLCreateMappedIndexStatementNode mappedCollectionMember acceptVisitor: self);
		yourself