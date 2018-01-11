tests
testAst3MethodCallsHaveNoParameters
		self assert: ((ast at: 1) select select: [ :s | s arguments size = 0 ]) size  equals: 3