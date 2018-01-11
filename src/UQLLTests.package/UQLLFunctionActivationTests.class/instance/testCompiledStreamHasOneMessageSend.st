compiled-stream-test
testCompiledStreamHasOneMessageSend
	self
		assert: ((stream instVarNamed: #dataProjection) select: [ :s | s loader isKindOf: UQLLMethodActivation ]) size
		equals: 1