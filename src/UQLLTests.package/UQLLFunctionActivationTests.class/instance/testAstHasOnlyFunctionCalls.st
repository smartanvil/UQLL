ast-test
testAstHasOnlyFunctionCalls
	self assert: ((ast at: 1) select allSatisfy: [ :t | t isKindOf: UQLLFunctionCall ])