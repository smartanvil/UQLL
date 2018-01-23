examples-ethereum
exampleEthereumEnvironmentQueriesClusterCollectionQuery 
	<example> 
	self ensureEthereum.
	self queryInspect: '
		select instance
		from instance in eth.contract;
	'.