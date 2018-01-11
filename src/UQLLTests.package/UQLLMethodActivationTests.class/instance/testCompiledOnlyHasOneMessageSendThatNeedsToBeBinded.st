compiled-stream-test
testCompiledOnlyHasOneMessageSendThatNeedsToBeBinded
	| dataProjection msgSend |
	dataProjection := stream instVarNamed: #dataProjection.
	msgSend := (dataProjection collect: #loader) detect: [ :s | s isKindOf: UQLLMessageSend ].
	self assert: msgSend needsBinding