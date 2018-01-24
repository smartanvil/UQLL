as yet unclassified
visitCreateStatement: anEQLCreateStatementNode
	^ UQLLCreateCollectionDefinition new
		source: (anEQLCreateStatementNode selection acceptVisitor: self);
		name: (anEQLCreateStatementNode name acceptVisitor: self);
		yourself