initialize
initializeWith: anUQLLEnvironment
	| array keys |
	keys := collection all.
	array := Array new: keys size.
	anUQLLEnvironment
		parallelize: [ (1 to: keys size)
				collect: [ :idx | 
					| key |
					key := keys at: idx.
					[ array at: idx put: (member asSymbol value: (collection at: key)) ] ] ].
	self registerAll: array allongWithFullscanKeys: keys.
	collection registerIndex: self