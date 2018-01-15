accessing
orderIfPossible
	(source isNotNil and: [ orderBy isNotNil ])
		ifTrue: [ source := (orderBy sort: source upToEnd) readStream ]