visiting
acceptVisitor: aUQLLStreamBuilder
	^ UQLLUnionProjectionStream new
		firstCollection: (firstCollection acceptVisitor: aUQLLStreamBuilder);
		secondCollection: (secondCollection acceptVisitor: aUQLLStreamBuilder);
		yourself