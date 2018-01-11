compiled-stream-test
testCompiledOnlyHasOneMessageSendReceiverIsAScopePath
	| dataProjection msgSend |
	dataProjection := stream instVarNamed: #dataProjection.
	msgSend := (dataProjection collect: #loader) detect: [ :s |  s isKindOf: UQLLMessageSend  ].
	self assert: (msgSend receiver isKindOf: UQLLScopePath)