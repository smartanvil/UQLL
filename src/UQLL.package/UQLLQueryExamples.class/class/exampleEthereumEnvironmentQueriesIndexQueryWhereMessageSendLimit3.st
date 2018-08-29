examples-ethereum
exampleEthereumEnvironmentQueriesIndexQueryWhereMessageSendLimit3
	<example>
	self ensureEthereum.
	self
		queryInspect:
			'
		select  instance
		from eth.indexes  as instance
		where ''.''.split(instance).size = 1 
		limit 3 ;
	'