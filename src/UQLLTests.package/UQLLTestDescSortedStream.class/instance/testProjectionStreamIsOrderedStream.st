initialization
testProjectionStreamIsOrderedStream
	self assert: (stream isKindOf: UQLLProjectionStream).
	self assert: (stream source isKindOf: UQLLOrderedStream)