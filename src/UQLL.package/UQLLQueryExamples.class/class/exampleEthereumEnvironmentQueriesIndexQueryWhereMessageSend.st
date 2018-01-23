examples
exampleEthereumEnvironmentQueriesIndexQueryWhereMessageSend 
	<example> 
	self ensureEthereum.
	self queryInspect: '
		select instance
		from instance in eth.indexes
		where instance.isSymbol;
	'.