accessing
indexEntryTagOn: aCollection
	^ '{1}.{2}'
		format:
			{aCollection collectionName.
			('.' join: (accesses collect: #string))}