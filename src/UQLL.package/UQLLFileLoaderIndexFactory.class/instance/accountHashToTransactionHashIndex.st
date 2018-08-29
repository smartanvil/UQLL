as yet unclassified
accountHashToTransactionHashIndex
	^ UQLLHashToSetOfHashesIndex new
		name: #AccountToTransactionHashes;
		file: self indexDirectory / 'AccountToTransactionHashes.idx.fl';
		yourself