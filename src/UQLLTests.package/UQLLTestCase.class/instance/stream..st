accessing
stream: aQuery
	^ UQLLStreamCompiler buildStreamUnsafe: (UQLLSemanticTreeBuilder buildSemanticTree: aQuery)