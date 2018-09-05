as yet unclassified
visitEqualsToOperation: anEQLEqualsToOperationNode
	^ UQLLComparisionOperator equalsOperator 
		left: (anEQLEqualsToOperationNode left_exp acceptVisitor: self);
		right: (anEQLEqualsToOperationNode right_exp acceptVisitor: self);
		yourself