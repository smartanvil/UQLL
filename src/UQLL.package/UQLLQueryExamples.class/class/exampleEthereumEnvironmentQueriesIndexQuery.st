examples-ethereum
exampleEthereumEnvironmentQueriesIndexQuery 
	<example> 
	self ensureEthereum.
	self queryInspect: '
		select instance
		from eth.indexes  as instance;
	'.