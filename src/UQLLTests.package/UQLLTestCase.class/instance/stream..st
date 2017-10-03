accessing
stream: aQuery
	^ UQLLStreamBuilder buildStream: (UQLLSemanticTreeBuilder buildSemanticTree: aQuery)
	