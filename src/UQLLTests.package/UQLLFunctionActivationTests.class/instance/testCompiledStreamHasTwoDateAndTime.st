compiled-stream-test
testCompiledStreamHasTwoDateAndTime
	self
		assert: ((stream instVarNamed: #dataProjection) select: [ :s | s loader isKindOf: DateAndTime ]) size
		equals: 2