registry
transformObjectIntoIndexEntry: anObject
	^ (anObject at: #timestamp ) asBKNumber -> (anObject at:#hash) asBKNumber 