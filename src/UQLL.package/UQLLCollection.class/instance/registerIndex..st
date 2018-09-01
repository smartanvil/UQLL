testing
registerIndex: anIndex
	| alias |
	self environment installIndex: anIndex.
	alias := '{1}.{2}'
		format:
			{ self collectionName  asSymbol.
			anIndex member asSymbol}.
	self environment register: alias forIndexBasedOn: anIndex name.
	self indexes add: anIndex.