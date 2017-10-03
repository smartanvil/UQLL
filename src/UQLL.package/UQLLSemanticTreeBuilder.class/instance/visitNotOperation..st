as yet unclassified
visitNotOperation: anEQLNotOperationNode
	^ UQLLNotOperator new expression: (anEQLNotOperationNode exp acceptVisitor: self)