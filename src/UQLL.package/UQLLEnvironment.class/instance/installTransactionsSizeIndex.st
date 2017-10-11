initialization
installTransactionsSizeIndex
	indexRegistry
		at: #AmountOfTransactionsToBlockHash
		put:
			(UQLLIntegerAmountToHashIndex
				on: [ UQLLBlockGeneralIndexBuilder new
						sortTxAmountArray: (FLMaterializer materializeFromFileNamed: (FileLocator indexFolder / 'txamount.fl') fullName) ])