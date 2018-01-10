ast-test
testAstFunctionDateHasOneParameter
	self assert: ((ast at: 1) select anySatisfy: [ :t | t selector = #date asScopePath and: [ t arguments size = 1 ] ])