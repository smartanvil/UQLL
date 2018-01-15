visiting
visitSelect: aUQLLSelect
	| source ordered return |
	environment := aUQLLSelect domain.
	source := aUQLLSelect from acceptVisitor: self.
	source := self composeSource: source withAstNode: aUQLLSelect where.
	source := self composeSource: source withAstNode: aUQLLSelect limit.
	ordered := aUQLLSelect orderBy acceptVisitor: self.
	return := ordered
		ifNil: [ UQLLProjectionStream new ]
		ifNotNil: [ UQLLOrderedStream new
				orderBy: ordered;
				yourself ].
	^ return
		source: source;
		outline:
			(aUQLLSelect select
				collect: [ :n | 
					UQLLDataExtractor new
						name: n printString;
						load: (n acceptVisitor: self);
						yourself ]);
		yourself