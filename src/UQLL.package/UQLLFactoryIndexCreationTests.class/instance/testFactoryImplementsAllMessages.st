running
testFactoryImplementsAllMessages
	#(#accountHashIndex #transactionsSizeIndex #contractHashToTransactionHashIndex #accountHashToTransactionHashIndex #contractsAmountPerBlockIndex #timestampIndex #contractsHashIndex #transactionHashesIndex)
		do: [ :p | self assert: (factory perform: p) isUQLLIndex ]