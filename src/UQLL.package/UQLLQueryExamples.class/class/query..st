auxiliar
query: aQuery
	| streams |
	streams := UQLLStreamCompiler buildStreamUnsafe: (UQLLSemanticTreeBuilder buildSemanticTree: aQuery).
	self assert: streams size = 1.
	^ streams first