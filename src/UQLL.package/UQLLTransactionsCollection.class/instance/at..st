accessing
at: anIndex
	| blockHash transactionId |
	blockHash := (anIndex x asBKHexa: 64) asAddress.
	transactionId := anIndex y.
	^ self connection findTransactionByBlockHash: blockHash andIndex: transactionId - 1