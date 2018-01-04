install - collections
installBuiltinCollections
	self installCollection: self privateContractCollection as: #contract.
	self installCollection: self privateBlockCollection as: #blocks.
	self installCollection: self privateAccountsCollection as: #accounts.
	self installCollection: self privateTransactionsCollection as: #transactions.
	self installCollection: self privateIndexesCollection as: #indexes.
	self installCollection: self privateBriefCollection as: #collections