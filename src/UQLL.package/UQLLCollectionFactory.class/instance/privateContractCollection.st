install - collections
privateContractCollection
	^ UQLLCollectionScope new
		names:
			{(#instances -> UQLLContractInstancesCollection new).
			(#descriptions
				->
					(UQLLContractCollection new
						directory: FileLocator contractsFolder;
						yourself)).
			(#activations -> UQLLContractInstancesActivationsCollection new)} asDictionary;
		yourself