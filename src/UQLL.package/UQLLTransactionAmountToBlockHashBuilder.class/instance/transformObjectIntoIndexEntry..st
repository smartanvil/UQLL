registry
transformObjectIntoIndexEntry: anObject
	^ (anObject at: #transactions) size -> (anObject at: #hash) asBKNumber