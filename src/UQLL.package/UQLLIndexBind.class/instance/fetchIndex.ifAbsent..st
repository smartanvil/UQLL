accessing
fetchIndex: anEnvironment ifAbsent: aBlock
	^ (anEnvironment includesIndex: tag)
		ifTrue: [ anEnvironment indexAt: tag ]
		ifFalse: [ aBlock value ]