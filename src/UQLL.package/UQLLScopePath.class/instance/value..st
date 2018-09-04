evaluating
value: anObject
	^ self inject: anObject into: [ :acc :part | part asSymbol value: acc ]