examples-ethereum
ensureEthereum
	self hasEthereumInstalled
		ifFalse: [ self exampleCreateConnection ]