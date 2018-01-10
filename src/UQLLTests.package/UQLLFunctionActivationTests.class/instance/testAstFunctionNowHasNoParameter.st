ast-test
testAstFunctionNowHasNoParameter
	self
		assert:
			((ast at: 1) select anySatisfy: [ :t | t selector = #now asScopePath and: [ t arguments size = 0 ] ])