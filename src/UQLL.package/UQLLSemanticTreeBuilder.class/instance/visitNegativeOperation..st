visiting
visitNegativeOperation: anUQLNegativeOperationNode
	^ UQLLNegationOperator new
		expression: (anUQLNegativeOperationNode exp acceptVisitor: self);
		yourself