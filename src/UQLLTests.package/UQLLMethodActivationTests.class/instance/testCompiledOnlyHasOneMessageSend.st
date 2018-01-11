compiled-stream-test
testCompiledOnlyHasOneMessageSend
	| dataProjection |
	dataProjection := stream instVarNamed: #dataProjection.
	self assert: (dataProjection collect: #loader thenSelect: [ :s | s isKindOf: UQLLMessageSend ]) size equals: 1