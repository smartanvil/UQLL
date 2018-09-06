accessing
atPoint: anIndex
	| blockHash transactionId |
	blockHash := (anIndex x asBKHexa: 64) asAddress.
	transactionId := anIndex y.
	^ self session findTransactionByBlockHash: blockHash andIndex: transactionId - 1