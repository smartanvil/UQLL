examples-ethereum
exampleEthereumEnvironmentQueriesClusterCollectionQuery 
	<example> 
	self ensureEthereum.
	self queryInspect: '
		select instance
		from  eth.contract as instance;
	'.