compiled-stream-test
testCompiledStreamHasOneMessageSendWithEnvironmentFunctionsAsReceiver
	self
		assert:
			(((stream instVarNamed: #dataProjection) detect: [ :s | s loader isKindOf: UQLLMethodActivation ]) loader receiver isKindOf: UQLLEnvironmentFunctions)