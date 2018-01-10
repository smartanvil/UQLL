ast-test
testAstFunctionYearAFunctionCallAsParameter
	self assert: ((ast at: 1) select anySatisfy: [ :t | t selector = #year asScopePath and: [ (t arguments at: 1) isKindOf: UQLLFunctionCall  ] ])