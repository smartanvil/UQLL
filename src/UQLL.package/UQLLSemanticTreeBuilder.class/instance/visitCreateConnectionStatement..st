as yet unclassified
visitCreateConnectionStatement: anEQLCreateConnectionStatementNode
	^ UQLLCreateConnection
		connection:
			(UQLLConnection new
				name: (anEQLCreateConnectionStatementNode name acceptVisitor: self);
				url: (anEQLCreateConnectionStatementNode url acceptVisitor: self);
				yourself)