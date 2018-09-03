visiting
visitDropIndex: anUQLLDropIndex
	self flag: #UrgentModificationOnTheParser.
	anUQLLDropIndex
		drop: (UQLLRunningEnvironmentHolder value get: anUQLLDropIndex indexName asScopePath).
	^ ' Index dropped '