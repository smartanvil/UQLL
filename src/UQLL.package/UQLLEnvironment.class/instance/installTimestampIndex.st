initialization
installTimestampIndex
	indexRegistry
		at: #BlockStampToBlockHash
		put:
			(UQLLStampToHashIndex
				on: [ (FLMaterializer materializeFromFileNamed: (FileLocator indexFolder / 'stampIndex.fl') fullName) select: [ :i | i isNotNil ] ])