as yet unclassified
contractHashToTransactionHashIndex
	^ UQLLNamedIndex named: #ContractToTransactionHashes on: self indexDirectory / 'ContractToTransactionHashes.idx.fl'