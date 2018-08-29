accessing
register: anIndexEntry
	self data at: anIndexEntry key ifAbsentPut: [ OrderedCollection new ].
	(self data at: anIndexEntry key) add: anIndexEntry value