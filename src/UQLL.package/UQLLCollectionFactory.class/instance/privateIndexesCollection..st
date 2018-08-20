install - collections
privateIndexesCollection: anEnvironment
	^ [ (anEnvironment names associations
		select:
			[ :a | (a value isKindOf: UQLLNamedIndex) or: [ a value isKindOf: UQLLNamedIndexProjection ] ])
		collect: #key ]