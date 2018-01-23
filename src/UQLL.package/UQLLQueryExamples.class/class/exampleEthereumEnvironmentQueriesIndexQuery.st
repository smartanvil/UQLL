examples-ethereum
exampleEthereumEnvironmentQueriesIndexQuery 
	<example> 
	self ensureEthereum.
	self queryInspect: '
		select instance
		from instance in eth.indexes;
	'.