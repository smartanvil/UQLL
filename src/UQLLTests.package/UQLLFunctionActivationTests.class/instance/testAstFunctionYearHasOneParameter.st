ast-test
testAstFunctionYearHasOneParameter
	self assert: ((ast at: 1) select anySatisfy: [ :t | t selector = #year asScopePath and: [ t arguments size = 1 ] ])