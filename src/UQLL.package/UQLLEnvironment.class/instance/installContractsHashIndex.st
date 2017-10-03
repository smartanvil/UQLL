initialization
installContractsHashIndex
	indexRegistry
		at: UQLLContractInstanceHashIndex
		put:
			(UQLLContractInstanceHashIndex
				on:
					[ (FLMaterializer materializeFromFileNamed: (FileLocator indexFolder / 'contracts-activations.fl') fullName) select: [ :i | i isNotNil ] ])