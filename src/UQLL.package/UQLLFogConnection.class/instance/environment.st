accessing
environment
	^ environment
		ifNil: [ environment := UQLLEthereumEnvironment new.
			environment initializeWithConnection: self ]