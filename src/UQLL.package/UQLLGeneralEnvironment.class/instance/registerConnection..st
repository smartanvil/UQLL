as yet unclassified
registerConnection: aConnection
	^ (self environmentFor: aConnection ifAbsent: [ self installEnvironment: aConnection environment ])
		registerConnection: aConnection