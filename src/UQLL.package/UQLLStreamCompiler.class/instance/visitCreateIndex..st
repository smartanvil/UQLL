create index visiting
visitCreateIndex: anUQLLCreateIndex
	| message collection index |
	collection := UQLLRunningEnvironmentHolder value get: anUQLLCreateIndex collection.
	message := (UQLLRunningEnvironmentHolder value exists: anUQLLCreateIndex name)
		ifFalse: [ 
			index := anUQLLCreateIndex createIndexFor: collection.
			UQLLRunningEnvironmentHolder value registerAndInitializeIndex: index.
			'New index created' 
		]
		ifTrue: [ 
			'Error: index already exists' 
		].
	^ {message} readStream