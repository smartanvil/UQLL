visiting
visitNegationOperator: anUQLLNegationOperator
	| filter |
	filter := UQLLUnaryOperationFilter new
		operation: anUQLLNegationOperator operationSymbol;
		right: (anUQLLNegationOperator expression acceptVisitor: self);
		yourself.
	^ filter needsBinding ifTrue: [ filter ] ifFalse: [ filter value ]