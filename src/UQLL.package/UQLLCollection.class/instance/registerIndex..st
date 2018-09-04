testing
registerIndex: anIndex
	| alias |
	alias := '{1}.{2}'
		format:
			{ self collectionName  asSymbol.
			anIndex member asSymbol}.
	self environment register: alias forIndexBasedOn: anIndex name.
	self indexes add: anIndex.