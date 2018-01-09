accessing
index
	^ projector
		index: [ environment getIndexNamed: relatedIndexName ];
		yourself