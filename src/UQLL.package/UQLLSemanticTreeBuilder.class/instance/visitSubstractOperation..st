as yet unclassified
visitSubstractOperation: anEQLSubstractOperationNode
	^ UQLLBinaryArithmeticExpression minusOperator
		left: (anEQLSubstractOperationNode left_exp acceptVisitor: self);
		right: (anEQLSubstractOperationNode right_exp acceptVisitor: self);
		yourself