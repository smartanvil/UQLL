install - indexes
installAccountHashIndex
	self installIndex: (UQLLNamedIndex named: #AccountToBlockHashes on: FileLocator indexFolder / 'account-activation.fl')