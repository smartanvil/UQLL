initialization
installTransactionsSizeIndex
	indexRegistry
		at: UQLLTransactionsAmountIndex
		put:
			(UQLLTransactionsAmountIndex
				on: [ UQLLBlockGeneralIndexSource new
						sortTxAmountArray: (FLMaterializer materializeFromFileNamed: (FileLocator indexFolder / 'txamount.fl') fullName) ])