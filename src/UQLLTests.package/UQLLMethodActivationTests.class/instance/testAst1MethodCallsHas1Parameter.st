ast-tests
testAst1MethodCallsHas1Parameter
	self assert: ((ast at: 1) select select: [ :s | s arguments size = 1 ]) size equals: 1