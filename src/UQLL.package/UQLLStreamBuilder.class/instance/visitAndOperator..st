as yet unclassified
visitAndOperator: anUQLLAndOperator 
	^ UQLLAndOperation new
		left: (anUQLLAndOperator left acceptVisitor: self);
		right: (anUQLLAndOperator right acceptVisitor: self);
		operation: anUQLLAndOperator operation;
		operationSymbol: anUQLLAndOperator operation;
		yourself