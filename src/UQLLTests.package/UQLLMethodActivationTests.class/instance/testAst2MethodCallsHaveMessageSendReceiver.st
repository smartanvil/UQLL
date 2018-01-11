ast-tests
testAst2MethodCallsHaveMessageSendReceiver
	self assert: ((ast at: 1) select select: [ :s | s receiver isKindOf: UQLLMessageSend ]) size equals: 2