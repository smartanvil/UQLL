initialization
testFilterProjectionContainsSubstractionOperation
	| values |
	values := stream instVarNamed: #dataProjection.
	self assert: values size equals: 1.
	self assert: ((values at: 1) isKindOf: UQLLDataExtractor).
	self assert: ((values at: 1) loader isKindOf: UQLLBinaryOperationFilter).
	self assert: (values at: 1) loader operation equals: #-