*UQLL
fromToFrom: aMessage
	| stream array |
	array := Array new: 2.
	stream := aMessage readStream.

	stream upToAll: '('.
	[stream peek isDigit] whileFalse: [ stream next ].
	array at: 1 put: (stream upToAll: ',') asNumber.
	array at: 2 put: (stream upToAll: ')') asNumber.
	^  array 