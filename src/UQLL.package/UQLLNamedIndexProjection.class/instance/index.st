accessing
index
	^ projector
		index: (UQLLRunningEnvironmentHolder value getIndexNamed: relatedIndexName);
		yourself