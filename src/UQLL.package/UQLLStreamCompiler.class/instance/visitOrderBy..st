visiting
visitOrderBy: anUQLLOrderBy
	| create sorter |
	create := (anUQLLOrderBy order ifNil: [ #asc ]) asSymbol.
	sorter := create value: UQLLSorter.
	sorter
		expression:
			(UQLLDataExtractor new
				load: anUQLLOrderBy expression;
				name: 'Order';
				yourself).
	^ UQLLOrderedStream new
		orderBy: sorter;
		yourself