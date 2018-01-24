examples-ethereum
exampleEthereumEnvironmentQueriesIndexQueryWhereMessageSendLimit3
	<example>
	self ensureEthereum.
	self
		queryInspect:
			'
		select  instance
		from instance in eth.indexes
		where ''.''.split(instance).size = 1 
		limit 3 ;
	'