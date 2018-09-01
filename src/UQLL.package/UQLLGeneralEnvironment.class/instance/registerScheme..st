as yet unclassified
registerScheme: aConnection
	^ (self environmentFor: aConnection ifAbsent: [ self installEnvironment: aConnection environment ])
		registerScheme: aConnection