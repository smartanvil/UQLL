accessing
environmentFor: aScheme ifAbsent: aBlock
	^ scheme name == aScheme name
		ifTrue: [ self ]
		ifFalse: [ super environmentFor: aScheme ifAbsent: aBlock ]