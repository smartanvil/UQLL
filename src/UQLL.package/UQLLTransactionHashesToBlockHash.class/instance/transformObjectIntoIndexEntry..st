accessing
transformObjectIntoIndexEntry: anObject
	^ (anObject at: #transactions) collect: [ :t | (t at: #hash) -> (anObject at: #hash) ]