install - indexes
installBuiltinIndexes: anIndexFactory
	self installIndex: anIndexFactory accountHashIndex.
	self installIndex: anIndexFactory timestampIndex.
	self installIndex: anIndexFactory transactionsSizeIndex.
	self installIndex: anIndexFactory transactionHashesIndex.
	self installIndex: anIndexFactory contractsHashIndex.
	self installIndex: anIndexFactory contractsAmountPerBlockIndex.
	self installIndex: anIndexFactory accountHashToTransactionHashIndex.
	self installIndex: anIndexFactory contractHashToTransactionHashIndex