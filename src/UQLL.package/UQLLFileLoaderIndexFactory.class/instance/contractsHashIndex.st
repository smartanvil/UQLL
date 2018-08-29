as yet unclassified
contractsHashIndex
	^ UQLLHashToSetOfHashesIndex new
		name: #ContractToBlockHashes;
		file: self indexDirectory / 'ContractToBlockHashes.idx.fl';
		yourself