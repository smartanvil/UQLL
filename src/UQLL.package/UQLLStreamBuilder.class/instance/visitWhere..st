visiting
visitWhere: aUQLLWhere
	^ UQLLFilteredResultStream new
		filter: (aUQLLWhere filter acceptVisitor: self);
		yourself