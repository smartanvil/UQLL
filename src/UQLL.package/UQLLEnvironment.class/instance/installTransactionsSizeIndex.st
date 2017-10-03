initialization
installTransactionsSizeIndex
	indexRegistry
		at: UQLLTransactionsAmountIndex
		put:
			(UQLLTransactionsAmountIndex
				on: [ FogDBBlockGeneralIndexSource new
						sortTxAmountArray: (FLMaterializer materializeFromFileNamed: (FileLocator indexFolder / 'txamount.fl') fullName) ])