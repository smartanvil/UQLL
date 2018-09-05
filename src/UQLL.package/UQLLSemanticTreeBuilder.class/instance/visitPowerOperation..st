visiting
visitPowerOperation: aBinaryOperation
	^ UQLLBinaryArithmeticExpression powerOperator 
		left: (aBinaryOperation left_exp acceptVisitor: self);
		right: (aBinaryOperation right_exp acceptVisitor: self);
		yourself