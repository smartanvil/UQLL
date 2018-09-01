as yet unclassified
environmentFor: aScheme ifAbsent: aBlock
	^ self privateEnvironmentCollection value
		detect: [ :e | e isRegisteredScheme: aScheme ]
		ifNone: aBlock