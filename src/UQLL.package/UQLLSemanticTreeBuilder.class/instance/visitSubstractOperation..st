as yet unclassified
visitSubstractOperation: anEQLSubstractOperationNode
	^ UQLLMinusOperator new
		left: (anEQLSubstractOperationNode left_exp acceptVisitor: self);
		right: (anEQLSubstractOperationNode right_exp acceptVisitor: self);
		yourself