visiting
visitDomainStatement: anEQLDomainStatementNode
	self halt.
	" This is wrong, is implementing only a regular fog ethereum connection, when it should implement a configurable connection. "
	^ (UQLLFogScheme on: 'http://' , anEQLDomainStatementNode url value) environment