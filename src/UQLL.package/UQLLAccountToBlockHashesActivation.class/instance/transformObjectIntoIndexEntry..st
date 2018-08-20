registry
transformObjectIntoIndexEntry: anObject
	| accounts |
	accounts := (anObject at: #transactions)
		flatCollect: [ :t | 
			{(t at: #from).
			(t at: #to)} ].
	^ (OrderedCollection new
		addAll: accounts;
		yourself) select: [ :a | self isAccount: a ] thenCollect: [ :a | a -> (anObject at: #hash) ]