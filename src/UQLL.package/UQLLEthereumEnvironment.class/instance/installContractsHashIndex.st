install - indexes
installContractsHashIndex
	self installIndex: (UQLLNamedIndex named: #ContractToBlockHashes on: FileLocator indexFolder / 'contract-activation.fl')