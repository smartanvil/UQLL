compiled-stream-test
testCompiledStreamHasOneSmallInteger
	self
		assert: ((stream instVarNamed: #dataProjection) select: [ :s | s loader isKindOf: SmallInteger  ]) size
		equals: 1