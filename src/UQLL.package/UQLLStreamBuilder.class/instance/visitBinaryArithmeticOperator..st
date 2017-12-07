visiting
visitBinaryArithmeticOperator: aUQLLPlusOperator 
	^ UQLLBinaryOperationFilter new
		left: (aUQLLPlusOperator left acceptVisitor: self);
		right: (aUQLLPlusOperator right acceptVisitor: self);
		operation: aUQLLPlusOperator operation;
		operationSymbol: aUQLLPlusOperator operation;
		yourself