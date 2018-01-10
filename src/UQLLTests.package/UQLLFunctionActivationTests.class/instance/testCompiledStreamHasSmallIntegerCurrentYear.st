compiled-stream-test
testCompiledStreamHasSmallIntegerCurrentYear
	self
		assert: ((stream instVarNamed: #dataProjection) select: [ :s | (s loader isKindOf: SmallInteger ) and: [ s loader = DateAndTime now year]]) size
		equals: 1