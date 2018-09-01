accessing
at: aHash
	^ self transform: (self session findTransactionByHash: aHash)