initialization
installAccountHashToTransactionHashIndex
	self registerIndex: (UQLLNamedIndex named: #AccountToTransactionHashes on: FileLocator indexFolder / 'account-tx.fl')