accessing
register: anIndexEntry
	data at: anIndexEntry key ifAbsentPut: [ OrderedCollection new ].
	(data at: anIndexEntry key) add: anIndexEntry value