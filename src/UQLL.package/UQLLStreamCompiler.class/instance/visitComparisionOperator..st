visiting
visitComparisionOperator: aUQLLGreaterOperator
	| filter |
	filter := UQLLBinaryOperationFilter new
		left: (aUQLLGreaterOperator left acceptVisitor: self);
		right: (aUQLLGreaterOperator right acceptVisitor: self);
		operation: aUQLLGreaterOperator operation;
		operationSymbol: aUQLLGreaterOperator operationSymbol;
		yourself.
	^ filter needsBinding
		ifTrue: [ filter ]
		ifFalse: [ filter value ]