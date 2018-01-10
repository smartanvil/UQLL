compiled-stream-test
testCompiledStreamHasTwoDateAndTimeTwoIsFix
	| date |
	date := (((stream instVarNamed: #dataProjection) select: [ :s | s loader isKindOf: DateAndTime ]) at: 2) loader.
	self assert: date equals: '2016-01-01T10:00:00+02:00' asDateAndTime