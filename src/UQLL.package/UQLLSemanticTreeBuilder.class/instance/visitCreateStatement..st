as yet unclassified
visitCreateStatement: anEQLCreateStatementNode
	^ UQLLUserBufferDefinition new
		source: (anEQLCreateStatementNode selection acceptVisitor: self);
		yourself