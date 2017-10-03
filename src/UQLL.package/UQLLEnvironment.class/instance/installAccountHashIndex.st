initialization
installAccountHashIndex
	indexRegistry
		at: UQLLAccountHashIndex
		put:
			(UQLLAccountHashIndex
				on: [ (FLMaterializer
						materializeFromFileNamed: (FileLocator indexFolder / 'account-movements.fl') fullName)
						select: [ :i | i isNotNil ] ])