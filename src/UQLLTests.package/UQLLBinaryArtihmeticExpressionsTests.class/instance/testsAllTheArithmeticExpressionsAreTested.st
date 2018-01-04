as yet unclassified
testsAllTheArithmeticExpressionsAreTested
	self
		assert: (UQLLBinaryArithmeticExpression allSubclasses collect: #name)
		equals:
			{#UQLLDivideOperator . #UQLLMinusOperator . #UQLLMultiplyOperator . #UQLLPlusOperator.
			#UQLLPowerOperator} asOrderedCollection 