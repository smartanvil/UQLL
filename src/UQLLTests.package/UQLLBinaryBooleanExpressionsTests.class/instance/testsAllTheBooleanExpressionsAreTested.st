as yet unclassified
testsAllTheBooleanExpressionsAreTested
	self
		assert: (UQLLBinaryBooleanOperator allSubclasses collect: #name)
		equals: {#UQLLAndOperator . #UQLLOrOperator} asOrderedCollection