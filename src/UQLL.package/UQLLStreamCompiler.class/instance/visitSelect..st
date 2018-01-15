visiting
visitSelect: aUQLLSelect
	| source |
	environment := aUQLLSelect domain.
	source := aUQLLSelect from acceptVisitor: self.
	source := self composeSource: source withAstNode: aUQLLSelect where.
	source := self composeSource: source withAstNode: aUQLLSelect limit.
	^ UQLLProjectionStream new
		source: source;
		orderBy: (aUQLLSelect orderBy acceptVisitor: self);
		outline:
			(aUQLLSelect select
				collect: [ :n | 
					UQLLDataExtractor new
						name: n printString;
						load: (n acceptVisitor: self);
						yourself ]);
		yourself