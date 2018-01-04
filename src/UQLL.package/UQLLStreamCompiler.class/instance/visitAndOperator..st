as yet unclassified
visitAndOperator: anUQLLAndOperator 
	^ UQLLAndOperationFilter new
		left: (anUQLLAndOperator left acceptVisitor: self);
		right: (anUQLLAndOperator right acceptVisitor: self);
		operation: anUQLLAndOperator operation;
		operationSymbol: anUQLLAndOperator operation;
		yourself