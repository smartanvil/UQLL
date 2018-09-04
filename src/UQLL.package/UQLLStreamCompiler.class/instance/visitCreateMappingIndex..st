create index
visitCreateMappingIndex: anUQLLCreateMappingIndex
	| message target mapped installingEnvironment |
	target := UQLLRunningEnvironmentHolder value get: anUQLLCreateMappingIndex targetedCollection.
	mapped := UQLLRunningEnvironmentHolder value get: anUQLLCreateMappingIndex mappedCollection.
	installingEnvironment := UQLLRunningEnvironmentHolder value get: anUQLLCreateMappingIndex name parent.
	message := (UQLLRunningEnvironmentHolder value exists: anUQLLCreateMappingIndex name)
		ifFalse: [ | index |
			index := anUQLLCreateMappingIndex createIndexFor: target mappedTo: mapped using: UQLLRunningEnvironmentHolder value.
			installingEnvironment registerAndInitializeIndex: index.
			'New index created' ]
		ifTrue: [ 'Error: index already exists' ].
	^ {message} readStream