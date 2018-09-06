initialization
indexTypeFor: anObject
	anObject class = DateAndTime
		ifTrue: [ ^ #timestamp ].
	(anObject isKindOf: Boolean)
		ifTrue: [ ^ #boolean ].
	anObject isNumber
		ifTrue: [ ^ #integer ].
	anObject isString
		ifTrue: [ ^ #text ].
	anObject isNil
		ifTrue: [ ^ #text ].	" Really? "
	self error: ' type not yet supported '