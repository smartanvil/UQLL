visiting
visitNotOperator: anUQLLNotOperator 
	| filter |
	filter := UQLLUnaryOperationFilter new
		operation: anUQLLNotOperator operationSymbol;
		right: (anUQLLNotOperator expression acceptVisitor: self);
		yourself.
	^ filter needsBinding ifTrue: [ filter ] ifFalse: [ filter value ]