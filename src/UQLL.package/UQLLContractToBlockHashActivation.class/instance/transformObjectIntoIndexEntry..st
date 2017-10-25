registry
transformObjectIntoIndexEntry: anObject
	| accounts |
	accounts := (anObject at: #transactions)
		flatCollect: [ :t | 
			{(t at: #from).
			(t at: #to)} ].
	^ (OrderedCollection new
		addAll: accounts;
		yourself) select: [ :a | self isContract: a ] thenCollect: [ :a | a asBKNumber -> (anObject at: #hash) ]