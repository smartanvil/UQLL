initialization
installContractHashToTransactionHashIndex
	self registerIndex: (UQLLNamedIndex named: #ContractToTransactionHashes on: FileLocator indexFolder / 'contract-tx.fl')