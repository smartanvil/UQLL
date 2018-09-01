initialize
initializeWith: anUQLLEnvironment
	| array keys |
	keys := collection fullScanKeys.
	array := Array new: keys size.
	anUQLLEnvironment
		parallelize: [ keys collect: [ :k | [ array at: k put: (member asSymbol value: (collection at: k)) ] ] ].
	self registerAll: array allongWithFullscanKeys: keys.
	collection registerIndex: self.
	self halt 