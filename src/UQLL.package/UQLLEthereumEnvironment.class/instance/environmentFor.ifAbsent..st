accessing
environmentFor: aConnection ifAbsent: aBlock
	^ aConnection name == aConnection name
		ifTrue: [ self ]
		ifFalse: [ super environmentFor: aConnection ifAbsent: aBlock ]