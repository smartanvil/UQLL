examples-ethereum
exampleUsingCreatedCollectionWithQuery
	<example>
	self ensureEthereum.
	self
		queryInspect:
			'
		select instance
		from instance in eth.holders
		;
	'