create index visiting
visitCreateIndex: anUQLLCreateIndex
	| message collection |
	collection := UQLLRunningEnvironmentHolder value get: anUQLLCreateIndex collection.
	message := (UQLLRunningEnvironmentHolder value exists: anUQLLCreateIndex name)
		ifFalse: [ anUQLLCreateIndex createIndexFor: collection using: UQLLRunningEnvironmentHolder value.
			'New index created' ]
		ifTrue: [ 'Error: index already exists' ].
	^ {message} readStream