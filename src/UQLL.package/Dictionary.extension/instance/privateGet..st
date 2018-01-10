*UQLL
privateGet: aString
	^ self at: aString ifAbsent: [ UQLLError signal: 'Could not fetch value {1}' format: {aString} ]