as yet unclassified
visitUnionStatement: anEQLUnionStatementNode
	^ UQLLUnion new
		firstCollection: (anEQLUnionStatementNode left_collection acceptVisitor: self);
		secondCollection: (anEQLUnionStatementNode right_collection acceptVisitor: self);
		yourself