initialization
installAccountHashIndex
	self registerIndex: (UQLLNamedIndex named: #AccountToBlockHashes on: FileLocator indexFolder / 'account-activation.fl')