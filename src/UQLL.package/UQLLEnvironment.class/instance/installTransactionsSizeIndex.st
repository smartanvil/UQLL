initialization
installTransactionsSizeIndex
	self registerIndex: (UQLLNamedIndex named: #AmountOfTransactionsToBlockHash on: FileLocator indexFolder / 'block-tx-amount.fl')