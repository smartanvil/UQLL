initialization
testResultStreamHasAnIndexForSource
	self assert: stream source index isCollection.
	self assert: (stream source index first isKindOf: ReadStream).
	self assert: stream source index size equals: stream source source size.