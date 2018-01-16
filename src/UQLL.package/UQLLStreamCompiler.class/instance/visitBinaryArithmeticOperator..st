visiting
visitBinaryArithmeticOperator: aUQLLPlusOperator
	| filter |
	filter := UQLLBinaryOperationFilter new
		left: (aUQLLPlusOperator left acceptVisitor: self);
		right: (aUQLLPlusOperator right acceptVisitor: self);
		operation: aUQLLPlusOperator operation;
		operationSymbol: aUQLLPlusOperator operation;
		yourself.
	^ filter needsBinding
		ifTrue: [ filter ]
		ifFalse: [ filter value ]