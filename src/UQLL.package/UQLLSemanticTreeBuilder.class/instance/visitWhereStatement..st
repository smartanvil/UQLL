visiting
visitWhereStatement: anEQLWhereStatementNode
	^ UQLLWhere new
		filter: (anEQLWhereStatementNode expression acceptVisitor: self);
		yourself