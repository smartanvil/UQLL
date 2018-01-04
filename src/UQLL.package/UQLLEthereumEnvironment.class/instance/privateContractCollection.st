install - collections
privateContractCollection
	^ UQLLCollectionScope new
		names:
			{(#instances -> (UQLLContractInstancesCollection onConnection: connection)).
			(#descriptions
				->
					((UQLLContractCollection onConnection: connection)
						directory: FileLocator contractsFolder;
						yourself)).
			(#activations -> (UQLLContractInstancesActivationsCollection onConnection: connection))} asDictionary;
		yourself