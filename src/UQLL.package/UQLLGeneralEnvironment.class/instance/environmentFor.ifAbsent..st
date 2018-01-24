as yet unclassified
environmentFor: aConnection ifAbsent: aBlock
	^ self privateEnvironmentCollection value
		detect: [ :e | e isRegisteredConnection: aConnection ]
		ifNone: aBlock