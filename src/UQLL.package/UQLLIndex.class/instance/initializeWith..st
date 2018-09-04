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
					[ array at: idx put: (member value: (collection at: key)) ] ] ].
	self registerAll: array allongWithFullscanKeys: keys.
	environment := anUQLLEnvironment.
	anUQLLEnvironment install: self at: self name asScopePath.
	collection registerIndex: self