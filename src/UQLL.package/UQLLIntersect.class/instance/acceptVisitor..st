visiting
acceptVisitor: aUQLLStreamBuilder
	^ UQLLIntersectProjectionStream new
		firstCollection: (firstCollection acceptVisitor: aUQLLStreamBuilder);
		secondCollection: (secondCollection acceptVisitor: aUQLLStreamBuilder);
		yourself