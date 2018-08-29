as yet unclassified
transactionHashesIndex
	^ UQLLHashToSetOfHashesIndex new
		name: #TransactionHashToBlockHash;
		file: self indexDirectory / 'TransactionHashToBlockHash.idx.fl';
		yourself