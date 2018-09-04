initialization
indexTypeFor: anObject
	anObject class = DateAndTime
		ifTrue: [ ^ #timestamp ].
	anObject isNumber
		ifTrue: [ ^ #integer ].
	anObject isString
		ifTrue: [ ^ #text ].
	self error: ' type not yet supported '