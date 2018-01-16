visiting
visitSelect: aUQLLSelect
	| source ordered |
	environment := aUQLLSelect domain.
	source := aUQLLSelect from acceptVisitor: self.
	source := self composeSource: source withAstNode: aUQLLSelect where.
	source := self composeSource: source withAstNode: aUQLLSelect limit.
	source := self composeSource: source withAstNode: aUQLLSelect orderBy.
	^ UQLLProjectionStream new
		source: source;
		project:
			(aUQLLSelect select
				collect: [ :n | 
					UQLLDataExtractor new
						name: n printString;
						load: (n acceptVisitor: self);
						yourself ]);
		yourself