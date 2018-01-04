as yet unclassified
testsAllTheArithmeticExpressionsAreTested
	self
		assert: (UQLLUnaryArithmeticOperator allSubclasses collect: #name)
		equals:
			{#UQLLNegationOperator} asOrderedCollection