ast-tests
testAstOnlyOneMethodCallNeedsBinding
	self assert: ((ast at: 1) select select: [ :s | s needsBinding ]) size equals: 1