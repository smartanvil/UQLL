as yet unclassified
visitComparisionOperator: aUQLLGreaterOperator
	^ '{1} {2} {3}'
		format:
			{(aUQLLGreaterOperator left acceptVisitor: self).
			aUQLLGreaterOperator operation.
			(aUQLLGreaterOperator right acceptVisitor: self)}