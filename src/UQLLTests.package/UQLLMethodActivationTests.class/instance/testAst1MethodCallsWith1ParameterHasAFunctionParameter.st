ast-tests
testAst1MethodCallsWith1ParameterHasAFunctionParameter
	self assert: (((ast at: 1) select detect: [ :s | s arguments size = 1 ]) arguments first isKindOf: UQLLFunctionCall)