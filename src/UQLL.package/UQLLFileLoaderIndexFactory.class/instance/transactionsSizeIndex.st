as yet unclassified
transactionsSizeIndex
	^ UQLLIntegerAmountToHashIndex new
		name: #AmountOfTransactionsToBlockHash;
		file: self indexDirectory / 'AmountOfTransactionsToBlockHash.idx.fl';
		yourself