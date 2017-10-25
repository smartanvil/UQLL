initialization
installContractsHashIndex
	self registerIndex: (UQLLNamedIndex named: #ContractToBlockHashes on: FileLocator indexFolder / 'contract-activation.fl')