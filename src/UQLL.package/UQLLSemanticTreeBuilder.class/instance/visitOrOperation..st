visiting
visitOrOperation: anEQLAndOperationNode
	^ UQLLOrOperator new
		left: (anEQLAndOperationNode left_exp acceptVisitor: self);
		right: (anEQLAndOperationNode right_exp acceptVisitor: self);
		yourself