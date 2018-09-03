visiting
visitDropIndexStatement: anUQLDropIndexStatementNode
	^ UQLLDropIndex new
		factory: (UQLLPostgresIndexFactory new);
		indexName: (anUQLDropIndexStatementNode name acceptVisitor: self);
		yourself