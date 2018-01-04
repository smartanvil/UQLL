visiting
visitCreateConnectionStatement: anEQLCreateConnectionStatementNode
	^ UQLLCreateConnection new
		name: (anEQLCreateConnectionStatementNode name acceptVisitor: self);
		url: (anEQLCreateConnectionStatementNode url acceptVisitor: self);
		yourself