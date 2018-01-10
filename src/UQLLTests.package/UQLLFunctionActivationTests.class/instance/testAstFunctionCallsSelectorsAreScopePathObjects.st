ast-test
testAstFunctionCallsSelectorsAreScopePathObjects
	self assert: ((ast at: 1) select allSatisfy: [ :t | t selector isScopePath ])