compiled-stream-test
testCompiledStreamHasOneMessageSend
	self
		assert: ((stream instVarNamed: #dataProjection) select: [ :s | s loader isKindOf: UQLLMessageSend ]) size
		equals: 1