as yet unclassified
contractHashToTransactionHashIndex
	^ UQLLHashToSetOfHashesIndex new
		name: #ContractToTransactionHashes;
		file: self indexDirectory / 'ContractToTransactionHashes.idx.fl';
		yourself