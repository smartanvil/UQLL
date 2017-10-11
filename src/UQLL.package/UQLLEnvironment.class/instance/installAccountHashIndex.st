initialization
installAccountHashIndex
	indexRegistry
		at: #AccountToBlockHashes
		put:
			(UQLLHashToSetOfHashesIndex
				on: [ (FLMaterializer
						materializeFromFileNamed: (FileLocator indexFolder / 'account-movements.fl') fullName)
						select: [ :i | i isNotNil ] ])