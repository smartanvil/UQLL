visiting
visitLesserThanOperation: aBinaryOperation
	^ UQLLLesserOperator new
		left: (aBinaryOperation left_exp acceptVisitor: self);
		right: (aBinaryOperation right_exp acceptVisitor: self);
		yourself