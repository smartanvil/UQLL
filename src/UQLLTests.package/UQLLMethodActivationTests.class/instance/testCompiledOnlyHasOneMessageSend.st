compiled-stream-test
testCompiledOnlyHasOneMessageSend
	| dataProjection |
	dataProjection := stream instVarNamed: #dataProjection.
	self assert: (dataProjection collect: #loader thenSelect: [ :s | s isKindOf: UQLLMethodActivation ]) size equals: 1