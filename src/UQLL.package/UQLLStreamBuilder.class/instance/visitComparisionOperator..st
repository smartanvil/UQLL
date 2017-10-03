visiting
visitComparisionOperator: aUQLLGreaterOperator
	^ UQLLBinaryOperation new
		left: (aUQLLGreaterOperator left acceptVisitor: self);
		right: (aUQLLGreaterOperator right acceptVisitor: self);
		operation: aUQLLGreaterOperator operation;
		operationSymbol: aUQLLGreaterOperator operationSymbol;
		yourself