install - collections
installBuiltinCollections: aCollectionFactory
	super installBuiltinCollections: aCollectionFactory.
	self installCollection: aCollectionFactory privateContractCollection as: #contract.
	self installCollection: aCollectionFactory privateBlockCollection as: #blocks.
	self installCollection: aCollectionFactory privateAccountsCollection as: #accounts.
	self installCollection: aCollectionFactory privateTransactionsCollection as: #transactions.
	self installCollection: (aCollectionFactory privateIndexesCollection: self) as: #indexes