visiting
visitOrOperator: anUQLLOrOperator 
	^ UQLLOrOperationFilter new
		left: (anUQLLOrOperator left acceptVisitor: self);
		right: (anUQLLOrOperator right acceptVisitor: self);
		operation: anUQLLOrOperator operation;
		operationSymbol: anUQLLOrOperator operation;
		yourself