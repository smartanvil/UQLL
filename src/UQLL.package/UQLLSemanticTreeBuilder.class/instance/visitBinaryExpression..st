as yet unclassified
visitBinaryExpression: anEQLBinaryExpressionNode
	| left right rslt |
	left := anEQLBinaryExpressionNode left_exp acceptVisitor: self.
	right := anEQLBinaryExpressionNode right_exp acceptVisitor: self.
	anEQLBinaryExpressionNode operation value isArithmeticExpression
		ifTrue: [ rslt := UQLLBinaryArithmeticExpression new ].
	anEQLBinaryExpressionNode operation value isBooleanExpression
		ifTrue: [ rslt := UQLLBinaryBooleanOperator new ].
	anEQLBinaryExpressionNode operation value isAssignmentExpression
		ifTrue: [ rslt := UQLLAssignation new ].
	anEQLBinaryExpressionNode operation value isComparisionExpression
		ifTrue: [ rslt := UQLLComparisionOperator new ].
	rslt left: left.
	rslt right: right.
	rslt operation: anEQLBinaryExpressionNode operation value asSymbol.
	^ rslt