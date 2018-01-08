visiting
visitCreateConnectionStatement: anEQLCreateConnectionStatementNode
	^ UQLLCreateConnection new
		name: (anEQLCreateConnectionStatementNode name acceptVisitor: self);
		url: (anEQLCreateConnectionStatementNode url acceptVisitor: self);
		type: (anEQLCreateConnectionStatementNode type acceptVisitor: self);
		yourself