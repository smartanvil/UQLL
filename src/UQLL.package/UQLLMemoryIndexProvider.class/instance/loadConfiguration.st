initialization
loadConfiguration
	indexes at: #AccountToBlockHashes put: UQLLHashToSetOfHashesIndex.
	indexes at: #AccountToTransactionHashes put: UQLLHashToSetOfHashesIndex.
	indexes at: #BlockStampToBlockHash put: UQLLStampToHashIndex.
	indexes at: #AmountOfContractCreationToBlockHash put: UQLLIntegerAmountToHashIndex.
	indexes at: #TransactionHashToBlockHash put: UQLLHashToSetOfHashesIndex.
	indexes at: #ContractToBlockHashes put: UQLLHashToSetOfHashesIndex.
	indexes at: #ContractToTransactionHashes put: UQLLHashToSetOfHashesIndex.
	indexes at: #AmountOfTransactionsToBlockHash put: UQLLIntegerAmountToHashIndex