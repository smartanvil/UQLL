accessing
source: aSource 
	super source: aSource.
	self index: {(aSource indexEntriesFor: filter) readStream}