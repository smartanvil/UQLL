as yet unclassified
contractsAmountPerBlockIndex
	^ UQLLIntegerAmountToHashIndex new
		name: #AmountOfContractCreationToBlockHash;
		file: self indexDirectory / 'AmountOfContractCreationToBlockHash.idx.fl';
		yourself
