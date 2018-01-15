visiting
visitOrderByStatement: anEQLOrderByStatementNode
	^ UQLLOrderBy new
		expression: (anEQLOrderByStatementNode expression acceptVisitor: self);
		order: (anEQLOrderByStatementNode order acceptVisitor: self) asScopePath;
		yourself