visiting
visitOrderBy: anUQLLOrderBy
	| create |
	create := (anUQLLOrderBy order ifNil: [ #asc ]) asSymbol.
	^ (UQLLSorter perform: create)
		expression:
			(UQLLDataExtractor new
				load: anUQLLOrderBy expression;
				name: 'Order';
				yourself);
		yourself