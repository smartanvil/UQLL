registry
transformObjectIntoIndexEntry: anObject
	^ ((anObject at: #transactions) select: [ :t | (t at: #to) isNil ]) size -> (anObject at: #hash)