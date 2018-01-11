ast-tests
testCompiledOnlyOneMethodCallNeedsBinding
	| dataProjection |
	dataProjection := stream instVarNamed: #dataProjection.
	self assert: (dataProjection  collect: #loader thenSelect: [ :s | s needsBinding ]) size equals: 1