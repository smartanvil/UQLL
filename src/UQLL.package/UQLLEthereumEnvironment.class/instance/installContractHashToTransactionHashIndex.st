install - indexes
installContractHashToTransactionHashIndex
	self installIndex: (UQLLNamedIndex named: #ContractToTransactionHashes on: FileLocator indexFolder / 'contract-tx.fl')