transform
generateEntriesFor: anArrayIndex
	^ (1 to: (anArrayIndex at: 1))
		inject: OrderedCollection new
		into: [ :acc :each | 
			acc add: (anArrayIndex at: 2) @ each.
			acc ]