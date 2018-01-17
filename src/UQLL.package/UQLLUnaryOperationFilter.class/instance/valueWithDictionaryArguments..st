evaluating
valueWithDictionaryArguments: aData
	| rightValue |
	rightValue := right valueWithDictionaryArguments: aData.
	^ rightValue perform: self operation