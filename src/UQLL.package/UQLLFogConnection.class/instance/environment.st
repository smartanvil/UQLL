accessing
environment
	^ environment
		ifNil: [ environment := UQLLEthereumEnvironment new.
			environment
				initializeWithConnection: self
				indexFactory: UQLLFileLoaderIndexFactory new
				collectionFactory: UQLLCollectionFactory new ]