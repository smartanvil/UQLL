as yet unclassified
visitAndOperation: anEQLAndOperationNode
	^ UQLLAndOperator new
		left: (anEQLAndOperationNode left_exp acceptVisitor: self);
		right: (anEQLAndOperationNode right_exp acceptVisitor: self);
		yourself