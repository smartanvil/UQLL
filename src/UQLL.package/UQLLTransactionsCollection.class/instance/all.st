initialization
all
	^ all ifNil: [ all := (environment indexAt: self transactionSizeIndexTag) data flatCollect: [ :d | self generateEntriesFor: d ] ]