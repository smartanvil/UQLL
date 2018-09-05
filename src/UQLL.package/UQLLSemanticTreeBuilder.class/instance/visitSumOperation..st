visiting
visitSumOperation: aBinaryOperation
	^ UQLLBinaryArithmeticExpression plusOperator
		left: (aBinaryOperation left_exp acceptVisitor: self);
		right: (aBinaryOperation right_exp acceptVisitor: self);
		yourself