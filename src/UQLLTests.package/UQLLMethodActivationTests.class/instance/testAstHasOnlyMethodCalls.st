ast-tests
testAstHasOnlyMethodCalls
	self assert: ((ast at: 1) select allSatisfy: [ :s | s isKindOf: UQLLMessageSendCall ])