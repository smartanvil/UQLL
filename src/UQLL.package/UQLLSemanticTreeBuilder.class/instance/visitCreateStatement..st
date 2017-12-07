as yet unclassified
visitCreateStatement: anEQLCreateStatementNode
	^ UQLLUserCollectionDefinition new
		source: (anEQLCreateStatementNode selection acceptVisitor: self);
		yourself