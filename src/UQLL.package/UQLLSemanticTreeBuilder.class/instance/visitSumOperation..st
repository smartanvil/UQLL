visiting
visitSumOperation: aBinaryOperation
	^ UQLLPlusOperator new
		left: (aBinaryOperation left_exp acceptVisitor: self);
		right: (aBinaryOperation right_exp acceptVisitor: self);
		yourself