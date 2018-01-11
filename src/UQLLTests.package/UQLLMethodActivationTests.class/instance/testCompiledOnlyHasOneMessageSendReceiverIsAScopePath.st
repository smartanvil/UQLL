compiled-stream-test
testCompiledOnlyHasOneMessageSendReceiverIsAScopePath
	| dataProjection msgSend |
	dataProjection := stream instVarNamed: #dataProjection.
	msgSend := (dataProjection collect: #loader) detect: [ :s |  s isKindOf: UQLLMethodActivation  ].
	self assert: (msgSend receiver isKindOf: UQLLScopePath)