examples
exampleEthereumEnvironmentQueriesIndexQueryWhereMessageSendLimit3OrderDesc
	<example>
	self ensureEthereum.
	self
		queryInspect:
			'
		select  instance
		from instance in eth.indexes
		where ''.''.split(instance).size = 1 
		order by instance desc
		limit 3;
	'