initialization
installContractsHashIndex
	indexRegistry
		at: #ContractToBlockHashes
		put:
			(UQLLHashToSetOfHashesIndex
				on:
					[ (FLMaterializer materializeFromFileNamed: (FileLocator indexFolder / 'contracts-activations.fl') fullName) select: [ :i | i isNotNil ] ])