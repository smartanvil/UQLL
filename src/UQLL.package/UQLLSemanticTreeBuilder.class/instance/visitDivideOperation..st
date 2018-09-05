as yet unclassified
visitDivideOperation: aBinaryOperation 
	^ UQLLBinaryArithmeticExpression divideOperator
		left: (aBinaryOperation left_exp acceptVisitor: self);
		right: (aBinaryOperation right_exp acceptVisitor: self);
		yourself