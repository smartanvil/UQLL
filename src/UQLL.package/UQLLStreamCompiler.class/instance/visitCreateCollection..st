create collection
visitCreateCollection: anUQLLCreateCollectionDefinition
	| name message |
	name := anUQLLCreateCollectionDefinition name acceptVisitor: self.
	message := (UQLLRunningEnvironmentHolder value exists: name)
		ifFalse: [ 'New collection created' ]
		ifTrue: [ 'Collection modified' ].
	UQLLRunningEnvironmentHolder value
		installCollection: (self messageSendCollectionVisiting: anUQLLCreateCollectionDefinition source)
		as: name.
	^ {message} readStream