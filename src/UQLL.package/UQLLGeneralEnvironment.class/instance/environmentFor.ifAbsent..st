as yet unclassified
environmentFor: aConnection ifAbsent: aBlock
	^ self privateEnvironmentCollection
		detect: [ :e | e isRegisteredConnection: aConnection ]
		ifNone: aBlock