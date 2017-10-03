initialization
installTimestampIndex
	indexRegistry
		at: UQLLStampIndex
		put:
			(UQLLStampIndex
				on: [ (FLMaterializer materializeFromFileNamed: (FileLocator indexFolder / 'stampIndex.fl') fullName) select: [ :i | i isNotNil ] ])