examples-ethereum
exampleEthereumEnvironmentQueriesCollectionQuery 
	<example> 
	self ensureEthereum.
	self queryInspect: '
		select instance
		from instance in eth.collections;
	'.