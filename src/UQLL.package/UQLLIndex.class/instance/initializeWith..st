initialize
initializeWith: anUQLLEnvironment
	|  array keys alias |
	keys := collection fullScanKeys.
	array := Array new: keys size.
	anUQLLEnvironment parallelize: [ keys collect: [ :k | [ array at: k put: (member asSymbol value: (collection at: k)) ] ] ].
	self registerAll: array allongWithFullscanKeys: keys.
	self halt.
	collection environment installIndex: self.
	alias := '{1}.{2}'
		format:
			{collection name asSymbol.
			member asSymbol}.
	collection environment register: alias forIndexBasedOn: self name