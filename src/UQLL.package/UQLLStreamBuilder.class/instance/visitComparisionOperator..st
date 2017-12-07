visiting
visitComparisionOperator: aUQLLGreaterOperator
	^ UQLLBinaryOperationFilter new
		left: (aUQLLGreaterOperator left acceptVisitor: self);
		right: (aUQLLGreaterOperator right acceptVisitor: self);
		operation: aUQLLGreaterOperator operation;
		operationSymbol: aUQLLGreaterOperator operationSymbol;
		yourself