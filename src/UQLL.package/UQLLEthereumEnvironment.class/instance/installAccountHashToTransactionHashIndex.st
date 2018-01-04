install - indexes
installAccountHashToTransactionHashIndex
	self installIndex: (UQLLNamedIndex named: #AccountToTransactionHashes on: FileLocator indexFolder / 'account-tx.fl')