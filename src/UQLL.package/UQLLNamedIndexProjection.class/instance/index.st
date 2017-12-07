accessing
index
	^ projector
		index: (UQLLRunningEnvironmentHolder value indexInstanceFor: relatedIndexName);
		yourself