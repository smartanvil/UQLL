visiting
visitDomainStatement: anEQLDomainStatementNode
	^ (UQLLFogConnection on: 'http://' , anEQLDomainStatementNode url value) environment