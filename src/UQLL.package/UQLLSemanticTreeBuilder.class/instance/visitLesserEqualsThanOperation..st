visiting
visitLesserEqualsThanOperation: aBinaryOperation
	^ UQLLComparisionOperator lesserEqualsOperator
		left: (aBinaryOperation left_exp acceptVisitor: self);
		right: (aBinaryOperation right_exp acceptVisitor: self);
		yourself