compiled-stream-test
testCompiledStreamHasOneMessageSendThatNeedsToBeBinded
	self assert: ((stream instVarNamed: #dataProjection) detect: [ :s | s loader isKindOf: UQLLMethodActivation ]) loader needsBinding