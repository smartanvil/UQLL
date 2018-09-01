as yet unclassified
visitCreateIndexStatement: anUQLCreateIndexStatementNode
	^ UQLLCreateIndex new
		factory: (UQLLPostgresIndexFactory new);
		type: (anUQLCreateIndexStatementNode type acceptVisitor: self);
		name: (anUQLCreateIndexStatementNode name acceptVisitor: self);
		collection: (anUQLCreateIndexStatementNode collection acceptVisitor: self);
		member: (anUQLCreateIndexStatementNode member acceptVisitor: self);
		yourself