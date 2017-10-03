visiting
visitSelectStatement: anEQLSelectStatementNode
	| domain |
	domain := anEQLSelectStatementNode domain
		ifNil: [ UQLLDynamicGlobals value ]
		ifNotNil: [ anEQLSelectStatementNode domain acceptVisitor: self ].
	^ UQLLSelect new
		from: (anEQLSelectStatementNode from acceptVisitor: self);
		domain: domain;
		where: (anEQLSelectStatementNode where acceptVisitor: self);
		orderBy: (anEQLSelectStatementNode orderBy acceptVisitor: self);
		limit: (anEQLSelectStatementNode limit acceptVisitor: self);
		select: (anEQLSelectStatementNode binding acceptVisitor: self);
		yourself