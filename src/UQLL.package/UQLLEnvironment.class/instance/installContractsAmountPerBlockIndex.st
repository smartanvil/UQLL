initialization
installContractsAmountPerBlockIndex
	self registerIndex: (UQLLNamedIndex named: #AmountOfContractCreationToBlockHash on: FileLocator indexFolder / 'contract-creation.fl')