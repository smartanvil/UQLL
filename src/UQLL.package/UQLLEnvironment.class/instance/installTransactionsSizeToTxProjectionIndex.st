initialization
installTransactionsSizeToTxProjectionIndex
	self
		registerIndex:
			(UQLLNamedIndexProjection
				named: #TxAmountOfTransactionsToBlockHash
				relatedIndexName: #AmountOfTransactionsToBlockHash
				with: UQLLTxSizeToTxProjector new)