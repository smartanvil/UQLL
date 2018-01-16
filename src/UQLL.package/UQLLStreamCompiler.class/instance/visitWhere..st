visiting
visitWhere: aUQLLWhere
	^ UQLLFilteredStream new
		filter: (aUQLLWhere filter acceptVisitor: self);
		yourself