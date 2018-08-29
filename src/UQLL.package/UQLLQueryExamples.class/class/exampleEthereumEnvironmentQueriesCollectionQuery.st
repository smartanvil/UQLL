examples-ethereum
exampleEthereumEnvironmentQueriesCollectionQuery 
	<example> 
	self ensureEthereum.
	self queryInspect: '
		select instance
		from eth.collections as instance;
	'.