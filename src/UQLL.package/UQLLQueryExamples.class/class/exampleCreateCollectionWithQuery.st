examples-ethereum
exampleCreateCollectionWithQuery
	<example>
	self ensureEthereum.
	self
		queryInspect:
			'
		create collection eth.holders { 
		select  instance
		from instance in eth.indexes
		where ''.''.split(instance).size = 1 
		order by instance desc
		limit 3};
	'