install - indexes
installContractsAmountPerBlockIndex
	self installIndex: (UQLLNamedIndex named: #AmountOfContractCreationToBlockHash on: FileLocator indexFolder / 'contract-creation.fl')