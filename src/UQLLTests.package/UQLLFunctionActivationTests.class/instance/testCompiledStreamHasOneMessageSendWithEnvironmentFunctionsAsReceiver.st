compiled-stream-test
testCompiledStreamHasOneMessageSendWithEnvironmentFunctionsAsReceiver
	self
		assert:
			(((stream instVarNamed: #dataProjection) detect: [ :s | s loader isKindOf: UQLLMessageSend ]) loader receiver isKindOf: UQLLEnvironmentFunctions)