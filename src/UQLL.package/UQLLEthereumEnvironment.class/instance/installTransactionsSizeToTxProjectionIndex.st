install - indexes
installTransactionsSizeToTxProjectionIndex
	self
		installIndex:
			(UQLLNamedIndexProjection
				named: #TxAmountOfTransactionsToBlockHash
				relatedIndexName: #AmountOfTransactionsToBlockHash
				with: UQLLTxSizeToTxProjector new)