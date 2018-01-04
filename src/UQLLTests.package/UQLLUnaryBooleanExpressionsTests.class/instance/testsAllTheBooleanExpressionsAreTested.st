as yet unclassified
testsAllTheBooleanExpressionsAreTested
	self
		assert: (UQLLUnaryBooleanOperator allSubclasses collect: #name)
		equals: {#UQLLNotOperator} asOrderedCollection