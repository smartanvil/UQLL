mapping
indexTypeFor: aClass 
	^ aClass =  DateAndTime ifTrue:[#timestamp]ifFalse:[self error: ' not yet supported ']