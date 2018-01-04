as yet unclassified
testsAllTheBooleanExpressionsAreTested
	self
		assert: (UQLLComparisionOperator allSubclasses collect: #name)
		equals:
			#(#UQLLDifferentOperator #UQLLEqualsOperator #UQLLGreaterEqualsOperator #UQLLGreaterOperator #UQLLLesserEqualsOperator #UQLLLesserOperator)
				asOrderedCollection