initialization
all
	^ all
		ifNil: [ all := (environment getIndexNamed: self transactionSizeIndexTag) data
				flatCollect: [ :d | self generateEntriesFor: d ] ]