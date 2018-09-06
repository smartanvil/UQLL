accessing
at: anIndex
	anIndex isPoint
		ifTrue: [ ^ self atPoint: anIndex ].
	^ self session findTransactionByHash: anIndex