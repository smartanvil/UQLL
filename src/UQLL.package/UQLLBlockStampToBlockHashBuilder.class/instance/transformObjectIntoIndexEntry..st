registry
transformObjectIntoIndexEntry: anObject
	^ (anObject at: #timestamp) -> (anObject at: #hash)