examples-ethereum
exampleEthereumEnvironmentQueriesIndexQueryWhereMessageSendLimit3OrderDesc
	<example>
	self ensureEthereum.
	self
		queryInspect:
			'
		select  instance
		from eth.indexes as instance
		where ''.''.split(instance).size = 1 
		order by instance desc
		limit 3;
	'