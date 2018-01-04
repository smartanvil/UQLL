install - indexes
installTransactionsSizeIndex
	self installIndex: (UQLLNamedIndex named: #AmountOfTransactionsToBlockHash on: FileLocator indexFolder / 'block-tx-amount.fl')