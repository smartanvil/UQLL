examples-ethereum
exampleUsingCreatedCollectionWithQuery
	<example>
	self ensureEthereum.
	self
		queryInspect:
			'
		select instance
		from eth.holders as instance
		;
	'