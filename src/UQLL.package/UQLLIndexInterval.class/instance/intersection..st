enumerating
intersection: aUQLLIndexInterval
	^ self species = aUQLLIndexInterval species
		ifTrue: [ self index == aUQLLIndexInterval index
				ifTrue: [ UQLLIndexInterval new
						from: (from max: aUQLLIndexInterval from);
						to: (to min: aUQLLIndexInterval to);
						index: index ]
				ifFalse: [ self asSortedCollection intersection: aUQLLIndexInterval asSortedCollection ] ]
		ifFalse: [ self asSortedCollection intersection: (aUQLLIndexInterval reject: [ : i | i isNil ]) asSortedCollection ]